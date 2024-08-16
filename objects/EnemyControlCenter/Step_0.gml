/// @description Insert description here
// You can write your code in this editor

// Xx_DarkD_xXTODO: yst你在干什么啊
// 宋弦司TODO: 做碍
// if (Phase == 3) {
	// audio_sound_pitch(BgmSaveDEFAULT, (array_get(_pitch, 0)));
	// 
// };

/* if (keyboard_check_pressed(ord("L"))){
	global.debug = (!global.debug)
} */
speedd += 0.55;
if (Phase == 3.5){
	audio_sound_pitch(_create_stream, (array_get(_pitch, _pitch_index)));
	if (global.P3EX) {
		if (_pitch[0] > 0) then _pitch[0] -= 0.05;
	}
	if (global.P3End){
		if (_pitch[1] > 0.5) then _pitch[1] -= 0.05;
	};
}

Geno_ink_eye_time ++;
if ((Geno_ink_eye_time % 5) == 1) then Geno_ink_eye_image = (irandom_range(0, 3));

if (_wiggle) {
	_wiggle_sin ++;
	if (wiggleMode == WIGGLE_MODE.NORMAL) {
		_body_x = ((sin(_wiggle_sin * 0.1)) * 1);
		_body_y = ((sin(_wiggle_sin * 0.2)) * 0.7);
		_head_x = ((sin(_wiggle_sin * 0.1)) * 1);
		_head_y = ((sin(_wiggle_sin * 0.2)) * 0.75);
	} else {
		if (wiggleMode == WIGGLE_MODE.UPDOWN) {
			_body_y = (sin((_wiggle_sin * 0.05)) * 0.9);
			_head_y = (sin((_wiggle_sin * 0.05)) * 1.05);
		} else {
			_wiggle = false;
		};
	};
	//_body_image += 0.065;
} else {
	_wiggle_sin = 0;
};

if (action == ENEMY_ACTION.ORIGINAL_STATE) {
	_body_x = 0;
	_body_y = 0;
	_wiggle = true;
	_body_sprite = GoInkSpriteBody;
	//
	if (ds_map_exists(OriginalState, "Body_Os")) then _body_image = ds_map_find_value(OriginalState, "Body_Os"); else _body_image = 0;
	if (ds_map_exists(OriginalState, "Leg_Os")) then LegImage = ds_map_find_value(OriginalState, "Leg_Os"); else LegImage = 0;
	ds_map_clear(OriginalState);
	//
	action = ENEMY_ACTION.NORMAL;
};
if (action == ENEMY_ACTION.READINESS) {
	if (!ds_map_exists(OriginalState, "Head_Os")) then ds_map_add(OriginalState, "Head_Os", _head_image);
	if (!ds_map_exists(OriginalState, "Body_Os")) then ds_map_add(OriginalState, "Body_Os", _body_image);
	if (!ds_map_exists(OriginalState, "Leg_Os")) then ds_map_add(OriginalState, "Leg_Os", LegImage);
	_wiggle = false;
	_body_x = 0;
	_body_y = 0;
	_body_image = 0;
	//
	action = GetAct;
	//show_message("Head: " + string(ds_map_find_value(OriginalState, "Head_Os")));
	//show_message("Body: " + string(ds_map_find_value(OriginalState, "Body_Os")));
	//show_message("Leg: " + string(ds_map_find_value(OriginalState, "Leg_Os")));
};

switch(action) {
	case (ENEMY_ACTION.BODY_UP) : 
		_act_time ++;
		if (_act_time == 1) {
			DestAnimACT();
			_body_sprite = BodyUD;
			_body_image = 0;
			Anim_Create(id, "_body_y", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, 5, 5);
			Anim_Create(id, "_body_y", ANIM_TWEEN.BACK, ANIM_EASE.OUT, -4, 5, 5, 5);
		};
		if (_act_time == 4) {
			_head_image = 15;
			_body_image = 1;
		};
		if (_act_time == 5) then _body_image = 2;
		if (_act_time == 8) then ScrHeadImageRecovery();
		break;
	case (ENEMY_ACTION.BODY_DOWN) : 
		_act_time ++;
		if (_act_time == 1) {
			DestAnimACT();
			_body_sprite = BodyUD;
			_body_image = 2;
			Anim_Create(id, "_body_y", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, -1, 5, 5);
			Anim_Create(id, "_body_y", ANIM_TWEEN.BACK, ANIM_EASE.OUT, 4, -5, 5, 5);
		};
		if (_act_time == 4) {
			_head_image = 15;
			_body_image = 1;
		};
		if (_act_time == 5) then _body_image = 0;
		if (_act_time == 8) then ScrHeadImageRecovery();
		break;
	case (ENEMY_ACTION.BODY_LEFT) : 
		_act_time ++;
		if (_act_time == 1){
			DestAnimACT();
			_body_sprite = BodyLR;
			_body_image = 0;
			Anim_Create(id, "_body_x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -5, 5);
			Anim_Create(id, "_body_x", ANIM_TWEEN.BACK, ANIM_EASE.OUT, -4, 5, 5, 5);
		};
		if (_act_time == 4) {
			_head_image = 15;
			_body_image = 1;
		};
		if (_act_time == 5) then _body_image = 2;
		if (_act_time == 8) then ScrHeadImageRecovery();
		break;
	case (ENEMY_ACTION.BODY_RIGHT) : 
		_act_time ++;
		if (_act_time == 1) {
			DestAnimACT();
			_body_sprite = BodyLR;
			_body_image = 2;
			Anim_Create(id, "_body_x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, -1, 5, 5);
			Anim_Create(id, "_body_x", ANIM_TWEEN.BACK, ANIM_EASE.OUT, 4, -5, 5, 5);
		};
		if (_act_time == 4) {
			_head_image = 15;
			_body_image = 1;
		};
		if (_act_time == 5) then _body_image = 0;
		if (_act_time == 8) then ScrHeadImageRecovery();
		break;
};

