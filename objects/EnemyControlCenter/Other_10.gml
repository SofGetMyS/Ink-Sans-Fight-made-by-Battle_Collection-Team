///@desc Init
Item_Add(item_pie);
Item_Add(item_noodles);
Item_Add(item_steak);
repeat (3){
	Item_Add(item_piece);
}
repeat (2){
	Item_Add(item_hero);
}

// Xx_Dark_D_xXTODO: 啊.
//宋弦司TODO: ？
if ((Phase == 1) || (Phase == 2)) then event_perform(ev_alarm, 0); // audio_play_sound(MainBgm, 0, 1);
if ((_music_flush + 1) > (array_length(global.bgm_list))) then _music_flush = 0;
Player_SetName("CHARA");
//audio_play_sound(bgmink_2_2, 1, 1);
if (Phase == 1){
	//Battle_SetMenuDialog("* You got lost.");
	Battle_SetMenuDialog(global.Text_Menu[1, 0]);
	UIFightBoard_index = 0;
}else if (Phase == 2){
	Battle_SetMenuDialog(global.Text_Menu[2, 0]);
	UIFightBoard_index = 0;
}else if (Phase == 3){
	Battle_SetMenuDialog("* You came back.");
	_head_image = 33;
	wiggleMode = WIGGLE_MODE.UPDOWN;
	UIFightBoard_index = 1;
}else{
	
	UIFightBoard_index = 1;
	for (var i = 0; i < 8; i++;){
		INST[i] = instance_create_depth((40 + (i * 80)), 30, 0, Bottle);
		INST[i].image_blend = Col_Bottle[i];
	}
	with (Bottle){
		start = true;
	}
	alarm[0] = 60;
	Battle_SetInkBodySprite(SprInkBodyNoBottle);
	//audio_play_sound(bgmink_3, 1, 1);
	Battle_SetMenuDialog("* You came back.&{sleep 30}* Again.");
	_head_image = 44;
	wiggleMode = WIGGLE_MODE.UPDOWN;
	battle.ColorDyes_switch = true;
	
}
if (Phase == 3 || Phase == 3.5) { _music_flush = 0; };
