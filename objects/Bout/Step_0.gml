var num, i, BoutStart = function(_execute_string){
	if (!is_undefined(_execute_string)){
		var target = asset_get_index(_execute_string);
		if (script_exists(target)){ if (bout_executing){ script_execute(target); };
		}else if (target == -1){ Battle_EndTurn(); return false; };
		return true;
	}else{ Battle_EndTurn(); return false; };
};
//show_message(undefined);
switch (Phase){
	case 1: case 2:
		num = BoutNum;
		if (Phase != 3.5 && !global.P3EX){
			for (i = 0; i < num; i ++;){ switch (bout){ case i: BoutStart("ScrP" + string(Phase) + "Bout" + string(bout)); break; }; };
			if (bout >= num) then Battle_EndTurn();
		}
		break;
	case 3: ScrP3StartBout(); break;
	case 3.5:
		if (global.P3EX){
			var COL = EnemyControlCenter.Col_Bottle;
			for (i = 0; i < 8; i ++;){ switch (global.P3EX_Col_Boss){ case COL[i]: BoutStart(string("ScrP3EX{0}", i)); break; }; }; 
		}else{
			var COLOR_NUM = irandom_range(0, 7);
			if (DrawLine_able){
				for (var i = 0; i < 8; i ++;){
				switch (COLOR_NUM){ 
					case i: 
						P3BoutList = i;
						var _func_check_bout = function() {
							if (instance_exists(EnemyControlCenter.INST[P3BoutList])){
								audio_play_sound(snd_ding, 1, 0);
								var COLOR = EnemyControlCenter.Col_Bottle[P3BoutList], _inst = ScrDrawLine_P3(0, 640, COLOR);
								with (EnemyControlCenter.INST[P3BoutList]){ event_user(0); };
								with (_inst) { Line_x[0] = 280; Line_x[1] = 380; };
								battle_board.color_frame = COLOR; CanChoiceCol = true;
								return true;
							};
							return false;
						};
						
						var _check_ret = _func_check_bout(); if (!_check_ret) then return _func_check_bout();
						break;
					};
				};
				DrawLine_able = false;
			};
			BoutStart(string("ScrP3Color{0}Bout{1}", COLOR_NUM, irandom_range(0, 5)));
		};
		break;
};