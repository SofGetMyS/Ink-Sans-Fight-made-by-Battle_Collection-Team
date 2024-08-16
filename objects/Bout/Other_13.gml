///@desc Turn End
switch (Phase){
	case 1:
	case 2:
		Anim_Create(EnemyControlCenter, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, EnemyControlCenter.x, -EnemyControlCenter.x+320, 30);
		Battle_SetSoul(battle_soul_red);
		break;
}
if (Phase == 1){
	switch (bout){
		default:
			Battle_SetMenuDialog("* text.");
			break;
		case 0:
			Battle_SetMenuDialog(global.Text_Menu[1, 1]);
			break;
		case 1:
			Battle_SetMenuDialog(global.Text_Menu[1, 2]);
			battle_board.color_frame = c_white;
			break;
		case 2:
			if (ds_exists(StarNum, ds_type_list)) then ds_list_destroy(StarNum);
			with (EnemyControlCenter){
				part_system_clear(Part_S);
				part_type_clear(Part_T);
			}
			with (EnemyControlCenter){
				part_system_destroy(Part_S);
				part_type_destroy(Part_T);
			}
			if (part_system_exists(Star_Effect_Part_System)) then part_system_destroy(Star_Effect_Part_System);
			if (part_type_exists(Star_Effect_Part_Type)) then part_type_destroy(Star_Effect_Part_Type);
			part_system_clear(GB_Part_S);
			part_type_clear(GB_Part_T);
			part_system_destroy(GB_Part_S);
			part_type_destroy(GB_Part_T);
			Battle_SetMenuDialog(global.Text_Menu[1, 3]);
			break;
		case 3:
			if (ds_exists(Bone, ds_type_list)) then ds_list_destroy(Bone);
			Battle_SetMenuDialog(global.Text_Menu[1, 4]);
			battle_board.color_frame = c_white;
			break;
		case 4:
			Battle_SetMenuDialog(global.Text_Menu[1, 5]);
			break;
		case 5:
			Battle_SetMenuDialog(global.Text_Menu[1, 6]);
			if (part_system_exists(global.PartDustS)){
				part_system_destroy(global.PartDustS);
			}
			if (part_type_exists(global.PartDustT)){
				part_type_destroy(global.PartDustT);
			}
			if (instance_exists(agent_Murder)){
				instance_destroy(agent_Murder);
			}
			break;
		case 6:
			Battle_SetMenuDialog(global.Text_Menu[1, 7]);
			if (part_system_exists(ScythePartSys)) then part_system_destroy(ScythePartSys);
			if (instance_exists(EnemyDeath)) then instance_destroy(EnemyDeath);
			break;
		case 7:
			Battle_SetMenuDialog(global.Text_Menu[1, 8]);
			if (instance_exists(EnemyLoris)){
				instance_destroy(EnemyLoris);
			}
			if (instance_exists(EnemyYH)){
				instance_destroy(EnemyYH);
			}
			break;
		case 8:
			if (instance_exists(EnemyKiller)){ instance_destroy(EnemyKiller); };
			Battle_SetMenuDialog(global.Text_Menu[1, 9]);
			break;
		case 9:
			if (instance_exists(agent_Ken)){ instance_destroy(agent_Ken); };
			Battle_SetMenuDialog(global.Text_Menu[1, 10]);
			break;
		//case 10:
			//if (instance_exists(EnemyCross)){ instance_destroy(EnemyCross); };
			//Battle_SetMenuDialog(global.Text_Menu[1, 11]);
			//break;
	}
}else if (Phase == 2){
	switch (bout) {
		case 0:
			part_system_destroy(EspeStickSysPart);
			break;
	};
}else if (Phase == 3){
	with (Bottle) start = true;
	EnemyControlCenter.alarm[0] = 60;
		
	ini_open("datafile/setting/Save");
	ini_write_real("Save", "Phase", 3.5);
	Phase = ini_read_real("Save", "Phase", 3.5);
	ini_close();
		
	Battle_SetMenuDialog("* . . .");
	battle.ColorDyes_switch = true;
}else if (Phase == 3.5){
	battle_board.color_frame = c_white;
	DrawLine_able = true;
	CanChoiceCol = false;
	if (global.P3EX){
		global.P3EX = false;
	}else{
		Battle_SetMenuDialog("* . . .");
	}
}
if (instance_exists(oSansInto)){
	instance_destroy(oSansInto);
}
bout_executing = false;
bout++;
instance_destroy();