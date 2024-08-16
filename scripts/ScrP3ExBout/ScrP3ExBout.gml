function ScrP3EXBoutStart(){
	if (time == 100){
		if (instance_exists(Bottle)) then Bottle.visible = false;
		static _create_stream_P3Extra = -1;
		/*var _fname = "bgmink_3EX.ogg", AudioExists = audio_create_stream(_fname);
		if (!audio_is_playing(AudioExists)){
			if (BgmSaveDEFAULT == "bgmink_3.ogg" && audio_is_playing(MainBgm)){
				audio_stop_sound(MainBgm);
				if (audio_exists(MainBgm)) then audio_destroy_stream(MainBgm);
				MainBgm = audio_create_stream(_fname);
				audio_play_sound(MainBgm, 0, 1);
			}
		}
		audio_destroy_stream(AudioExists);
		*/
		with (EnemyControlCenter){
			visible = false;
			
			if (!audio_exists(_create_stream_P3Extra)){
				_pitch_index = 1;
				audio_stop_sound(_now_playing);
				audio_destroy_stream(_create_stream);
				
				_create_stream_P3Extra = audio_create_stream((ExternalResourceCheck((string_concat(working_directory, @"music\", (array_get(global.bgm_list, 1)), ".ogg")), (array_get(global._check_size, 1)))));
				audio_play_sound(_create_stream_P3Extra, 0, 1);
				_create_stream = _create_stream_P3Extra;
			}
		}
	}
}
function ScrP3EXBoutEnd(_color_num, _EndTime){
	if (time == _EndTime){
		fader.height = 480;
		fader.alpha = 0;
		fader.color = EnemyControlCenter.Col_Bottle[_color_num];
		Anim_Create(fader, "alpha", 0, 0, 0, 1, 30);
	}
	if (time == _EndTime + 100){
		Anim_Create(fader, "height", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 480, -480, 60);
		EnemyControlCenter.visible = true;
		if (instance_exists(Bottle)){
			Bottle.visible = true;
			Battle_SetMenuDialog("* But nothing happened.");
		}else{
			Battle_SetMenuDialog("{color_text 255}{speed 16}* . . .&{sleep 40}* N O W !");
			global.P3End = true;
		}
		Battle_EndTurn();
	}
}
function ScrP3EX0(){
	if (time == 1){
		ScrBottleBreakCreateCir(40, 30, EnemyControlCenter.Col_Bottle[0], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(0, 600);
}
function ScrP3EX1(){
	if (time == 1){
		ScrBottleBreakCreateCir(120, 30, EnemyControlCenter.Col_Bottle[1], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(1, 600);
}
function ScrP3EX2(){
	if (time == 1){
		ScrBottleBreakCreateCir(200, 30, EnemyControlCenter.Col_Bottle[2], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(2, 600);
}
function ScrP3EX3(){
	if (time == 1){
		ScrBottleBreakCreateCir(280, 30, EnemyControlCenter.Col_Bottle[3], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(3, 600);
}
function ScrP3EX4(){
	if (time == 1){
		ScrBottleBreakCreateCir(360, 30, EnemyControlCenter.Col_Bottle[4], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(4, 600);
}
function ScrP3EX5(){
	if (time == 1){
		ScrBottleBreakCreateCir(440, 30, EnemyControlCenter.Col_Bottle[5], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(5, 600);
}
function ScrP3EX6(){
	if (time == 1){
		ScrBottleBreakCreateCir(520, 30, EnemyControlCenter.Col_Bottle[6], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(6, 600);
}
function ScrP3EX7(){
	if (time == 1){
		ScrBottleBreakCreateCir(600, 30, EnemyControlCenter.Col_Bottle[7], 12, 100);
	}
	ScrP3EXBoutStart();
	ScrP3EXBoutEnd(7, 600);
}