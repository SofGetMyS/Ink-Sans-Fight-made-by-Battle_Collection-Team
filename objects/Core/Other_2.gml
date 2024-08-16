/*enum DEPTH_UI{
		PANEL=-100,//0
		TEXT=-200,//1
		ENCOUNTER_ANIM=-300,//2
		FADER=-400//3
	};
	
	enum load.Depth{
		BG=-100,//0
		ENEMY=-200,//1
		UI=-300,//2
		FADER=-400,//3
		BULLET=-500,//4
		BOARD=-600,//5
		UI_HIGH=-700,//6
		BULLET_OUTSIDE_LOW=-800,//7
		SOUL=-900,//8
		BULLET_OUTSIDE_HIGH=-1000//9
	};*/



//Border_SetEnabled(true);

//Console_OutputLine("UNDERTALE by Toby Fox");
//Console_OutputLine("UNDERTALE Engine by TML");
//Console_OutputLine("Engine Version: "+ENGINE_VERSION);
//Console_OutputLine("Game Name: "+GAME_NAME);
//Console_OutputLine("Game Author: "+GAME_AUTHOR);
//Console_OutputLine("Game Version: "+GAME_VERSION);

//show_debug_overlay(true);




// globalvar FontCNMenu, FontCNDialog;
// FontCNMenu = font_add("Font/Simsun.ttf", 10, false, false, 0, 0);
//
//font_add_enable_aa(false);
// FontCNDialog = font_add("Font/FangZhengShaoEr_GBK.ttf", 12, false, false, 0, 0);
//var SHOW = font_get_size(FontCNMenu);
//show_message(SHOW);

//get_open_filename()
/*function FileSizeDetection(_fname, _dsize){
	var ErrorFileBinSizeTex = "Something size has changed.", FontFile = file_bin_open(_fname, 0), FontSize = file_bin_size(FontFile);
	file_bin_close(FontFile);
	if (FontSize == _dsize) then continue; else show_error(ErrorFileBinSizeTex, false);
	
	return true;
}*/
/* var ErrorFontTex = "Fatal Error.\nCannot found some asset.\nMaybe they are get lose.\nPlease ReDownload.";
if (!font_exists(FontCNDialog)) then show_error(ErrorFontTex, false); else if (!font_exists(FontCNMenu)) then show_error(ErrorFontTex, false);
file_byte_check("Font/Simsun.ttf", "10499104");
file_byte_check("Font/FangZhengShaoEr_GBK.ttf", "5386012"); */
/* var _PhaseCheck, _CheckPhase, _BgmCondition;
//ds_grid_clear(_PhaseCheck, 0);
_PhaseCheck[1, 0] = "2188320";
_PhaseCheck[1, 1] = "1817732";
_PhaseCheck[1, 2] = "1850859";
_PhaseCheck[1, 3] = "4027286";
_PhaseCheck[1, 4] = "3680089";
_PhaseCheck[2, 0] = "2149855";
_PhaseCheck[2, 1] = "2356218";
_PhaseCheck[2, 2] = "1339839";
_PhaseCheck[3, 0] = "2157453";
_PhaseCheck[3, 1] = "3031578";
//ds_grid_add()
//把音频文件用audio_create_stream导进来后检测是否存在，是的话就开始检测byte
for (_CheckPhase = 1; _CheckPhase < 4; _CheckPhase ++){
	_BgmCondition = (_CheckPhase != 3 && _CheckPhase == 1 ? 5 : (_CheckPhase == 2 ? 3 : 1));
	for (i = 0; i < _BgmCondition + (_CheckPhase == 3 ? 1 : 0); i ++;) file_byte_check("bgmink_" + string(_CheckPhase) + ((_CheckPhase != 3) ? "_" + string(i) : (_CheckPhase == 3 && i >= 1 ? "EX" : "")) + ".ogg", _PhaseCheck[_CheckPhase, i]);
} */