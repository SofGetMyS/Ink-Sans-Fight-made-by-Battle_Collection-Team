//gml_pragma("forceinline");
#macro FPSMAX (max((game_get_speed(gamespeed_fps)), fps_real))
#macro FPSMIN (min((game_get_speed(gamespeed_fps)), fps_real))

debug = false;
GameTest = true;


// Font
font_add_enable_aa(false);
globalvar FontCNMenu, FontCNDialog;
FontCNMenu = font_add(
	(
		ExternalResourceCheck(
			(
				string_concat(
					working_directory, @"font\Simsun.ttf"
				)
			), 10499104
		)
	), 10, false, false, (-infinity), infinity
);
FontCNDialog = font_add(
	(
		ExternalResourceCheck(
			(
				string_concat(
					working_directory, @"font\FangZhengShaoEr_GBK.ttf"
				)
			), 5386012
		)
	), 12, false, false, (-infinity), infinity
);

// 纠正窗口大小
window_set_size(880, 480);
window_center();

//gameInfo
globalvar Phase, Colormerge, ShdBlendControl;
Colormerge = [];
ini_open("datafile/setting/Save");
Phase = (GameTest ? get_integer("Enter Phase", 2) : ini_read_real("Save", "Phase", 1));

ColBottleAll = [c_lime, c_aqua, c_blue, #400080, c_fuchsia, c_red, #FF8000, c_yellow];
for (var i = 0; i < array_length(ColBottleAll); i++){ Colormerge[i] = ini_read_real("Save", "Bottle" + string(i), ColBottleAll[i]); };
ShdBlendControl = ini_read_real("Battle", "Blend", false);
ini_close();

//TODO: 声明
bgm_list = [];
_check_size = [];
switch(Phase) {
	default : 
		game_end();
		break;
	case (1) : 
		bgm_list = ["mus_bgmink_1_0", "mus_bgmink_1_1", "mus_bgmink_1_2", "mus_bgmink_1_3", "mus_bgmink_1_4"];
		_check_size = [2188320, 3109188, 1850859, 4027286, 3680089];
		break;
	case (2) : 
		bgm_list = ["mus_bgmink_2_0", "mus_bgmink_2_1", "mus_bgmink_2_2"];
		_check_size = [2149855, 2356218, 1339839];
		break;
	case (3) : 
	case (3.5) : 
		bgm_list = ["mus_bgmink_3", "mus_bgmink_3ex"];
		_check_size = [2157453, 2996227];
		// bgm_list = [mus_bgmink_3ex];
		break;
		
		//记得写一个BGM播放
};//...