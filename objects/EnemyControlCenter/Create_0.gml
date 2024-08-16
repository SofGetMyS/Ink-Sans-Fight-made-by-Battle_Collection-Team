depth=load.Depth[|1];
_enemy_slot=-1;
//MainBgm = audio_create_stream("Music/xxxx.ogg");
//audio_play_sound(MainBgm, 1, 0);
//if you think this game so hard, please press "G" to give you some item.

//instance_create_depth(0, 0, 0, objWorley);

Boutlist = ds_list_create();
ds_list_add(Boutlist, Bout);

//instance_create_depth(0, 0, 0, oDeathSickle);

function Action_Init(){
	enum ENEMY_ACTION{
		ORIGINAL_STATE,
		NORMAL,
		READINESS,
		BODY_UP,
		BODY_DOWN,
		BODY_LEFT,
		BODY_RIGHT
	}
	enum ENEMY_EMOJI{
		FACE,
		BODY,
		LEG
	}
	return;
}
Action_Init();
function DestAnimACT(){
	Anim_Destroy(id, "_body_y");
	Anim_Destroy(id, "_body_x");
	return;
}
function ScrHeadImageRecovery(){
	if (ds_map_exists(OriginalState, "Head_Os")){
		_head_image = ds_map_find_value(OriginalState, "Head_Os");
		//show_message("Head: " + string(ds_map_find_value(OriginalState, "Head_Os")));
	}else{
		_head_image = 0;
	}
	return;
}
bout_error = false;

action = 0;
GetAct = 0;
_act_time = 0;
OriginalState = ds_map_create();

_body_x = 0;
_body_y = 0;
_body_image = 0;

_wiggle = 1;
_wiggle_sin = 0;
_head_init_x = 0;
_head_init_y = - 125;
_head_time = 0;
_head_x = 0;
_head_y = 0;
_head_image = 0;
alpha = 1;

_body_init_x = 0;
_body_init_y = - 50;
GoInkSpriteBody = SprInkBody;
_body_sprite = GoInkSpriteBody;
BodyUD = -1;
BodyLR = -1;
_alpha = 1;

yy = 0;

OuterPart = false;
Part_S = part_system_create();
part_system_depth(Part_S, load.Depth[|0]);

Part_Outer = part_type_create();
part_type_alpha2(Part_Outer, 1, 0);
part_type_shape(Part_Outer, ps_shape_line);
part_type_color1(Part_Outer, c_white);
part_type_orientation(Part_Outer, 90, 90, 0.5, 0, 0);
part_type_speed(Part_Outer, 1, 6, 0.05, 0);
part_type_direction(Part_Outer, 270, 270, 0.5, 0);
part_type_size(Part_Outer, 0.1, 0.1, 0, 0);

Part_Outer0 = part_type_create();
part_type_alpha2(Part_Outer0, 1, 0);
part_type_shape(Part_Outer0, ps_shape_line);
part_type_color1(Part_Outer0, c_white);
part_type_orientation(Part_Outer0, 90, 90, -0.5, 0, 0);
part_type_speed(Part_Outer0, 1, 6, 0.05, 0);
part_type_direction(Part_Outer0, 270, 270, -0.5, 0);
part_type_size(Part_Outer0, 0.1, 0.1, 0, 0);

LegImage = 0;
speedd = 0;
wiggleMode = WIGGLE_MODE.NORMAL;
Col_Bottle = [c_lime, c_aqua, c_blue, c_fuchsia, #FF80FF, c_red, c_orange, c_yellow];
UIFightBoard_index = 0;

enum WIGGLE_MODE{
	NULL,
	NORMAL,
	UPDOWN
};

global.P3EX = false;
global.P3EX_Col_Boss = 0;
global.P3End = false;
_pitch = (array_create(2, 1));

Part_T = part_type_create();
part_type_alpha2(Part_T, 1, 0);
part_type_color1(Part_T, c_blue);
part_type_life(Part_T, 120, 120);
part_type_sprite(Part_T, SprStormStar, false, false, false);
part_type_direction(Part_T, 90, 90, 0, 0);
part_type_speed(Part_T, 6, 6, 0, 0);

Part_T0 = part_type_create();
part_type_alpha2(Part_T0, 0.6, 0);
part_type_color1(Part_T0, c_blue);
part_type_life(Part_T0, 40, 40);
part_type_sprite(Part_T0, SprStormStar, false, false, false);
part_type_orientation(Part_T0, 0, 360, 6, 0, 1);
part_type_direction(Part_T0, 90, 90, 0, 0);
part_type_speed(Part_T0, 6, 12, 0, 0);
part_type_scale(Part_T0, 0.2, 0.2);

Geno_ink_eye_time = 0;
Geno_ink_eye_image = 0;

// TODO: 啊?
_music_flush = 0;
if (file_exists("r7185q")) {
	var _fid = (file_text_open_read("r7185q")); // RC4: U2FsdGVkX1/SUQIHEW4QX2rZBIvAE/r7185q
	_music_flush = (file_text_read_real(_fid));
	file_text_close(_fid);
};
// 这个变量用来储存播放id
_now_playing = -1;
_create_stream = -1;
event_perform(ev_alarm, 3);

_pitch_index = 0;
INST = array_create(8);
