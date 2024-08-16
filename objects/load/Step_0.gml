if (!debug_mode){
	exception_unhandled_handler(function(Object_Handling_Error){
	
		var _f = file_text_open_write(program_directory + "/ErrorLog.txt");
		file_text_write_string(_f, "\n" + string(current_month) + "/" + string(current_day) + "\nGame Version:" + GAME_VERSION + "\nGame Author:" + GAME_AUTHOR + "\n" + string(Object_Handling_Error.longMessage));
		file_text_close(_f);
		
		var TEXT = undefined;
		switch (os_get_language()){
			default:
			case "en":
				TEXT = "Fatal Error!\nIf the restart is not resolved.\nPlease report to Author,and waitting fixed version.\n\n\n"+ string(Object_Handling_Error.message) + "\n\n\nGame Version:" + GAME_VERSION + "\nGame Author:" + GAME_AUTHOR + "\nThe message is write to \"ErrorLog.txt\".";
				break;
			case "zh":
				TEXT = "致命错误!\n如果重启未能得到解決。\n请将以下信息汇报于作者，然后等待修复版本。\n\n\n"+ string(Object_Handling_Error.message) + "\n\n\n游戏版本:" + GAME_VERSION + "\n游戏作者:" + GAME_AUTHOR + "\n错误已被写到 \"ErrorLog.txt\"。";
				break;
		}
		show_message(TEXT);
		return true;
		}
	)
}
if (Controlfunc){
	if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
		window_set_fullscreen(!window_get_fullscreen());
		//display_set_gui_maximize();
	};
	if(keyboard_check_pressed(vk_f2)){
		game_restart();
	};
};

if (GotoMode >= 1) then exit;
time++;
//gml_pragma("PNGCrush");
//var _time = function(_get_time) { var _result = min(time, _get_time); return _result; };
//var _target = function(_num) { static _result = _num; return _result; };
LoadBGScale = lerp(LoadBGScale, LoadBGScaleTarget, 0.15); 
if (time >= 30 && time < 300 && LoadBGAlpha < 1){ LoadBGAlpha += 0.1; }
if (time >= 60 && time < 300 && LoadFontAlpha < 1){ LoadFontAlpha += 0.1; LoadBGScaleTarget = 1.3; };

if (time == 120) { LoadState = "Sprites"; gml_pragma("PNGCrush"); };
if (time == 130) {
	var i;
	LoadState = "Textures";
	draw_flush();
	draw_texture_flush();
	array_foreach((texturegroup_get_textures( "Default")), (function(_i) { texture_flush(_i) }));
};
if (time == 140) {
	LoadState = "Sounds";
	audio_group_load(audiogroup_default);
};
if (time == 150) {
	audio_group_unload(audiogroup_default);
	LoadState = "Fonts";
};
if (time == 160) {
	LoadState = "Scripts";
	event_perform(ev_alarm, 2);
};
if (time == 170) {
	LoadState = "Undefined";
};
if (time > 300) {
	LoadBGScaleTarget = 1;
	LoadBGAlpha -= 0.1;
}
if (time == 300){
	but = instance_create_depth(6, 422, -100, battle_death_particle);
	but.sprite = SprLoading;
	LoadFontAlpha = 0;
	audio_play_sound(snd_noise, 1, 0);
}
if (time == 400){
	event_perform(ev_alarm, 0);
}
if (time == 600){
	fader.color = 0;
	Fader_Fade(0, 1, 30);
}
if (time == 660){
	fader.alpha = 0;
	visible = false;
	Encounter_Start(0);
}
/*switch (time) {
	case GetTime: LoadBGAlpha += 0.1; break;
	case GetTime:
		LoadFontAlpha += 0.1;
		DeincreaseLerp = (LoadState != "Undefined" ? (time - 40)/4 : DeincreaseLerp);
		LoadBGScale = lerp(1, 1.3, 
			(LoadState != "Undefined" ? 
				(time - 40)/4 
				: 
				DeincreaseLerp)
		);
		
		break;
		
	case 60:
		LoadState = "Sprites";
		break;
};
