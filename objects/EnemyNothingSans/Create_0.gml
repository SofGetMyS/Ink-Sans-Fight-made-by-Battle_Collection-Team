/// @description Insert description here
// You can write your code in this editor
//My Dear Son!
depth= load.Depth[|1]-1;

_org_body_spr = sprNothingBody;
_body_sprite = sprNothingBody;
_body_image = 0;
_head_image = 9;
DrawAlpha = 1;

_head_init_x = 0;
_head_init_y = -38;
_body_init_x = 0;
_body_init_y = -26;
_leg_movex = 0;
//_leg_x = 0;
_leg_y = 0;
_body_x = 0;
_body_y = 0;
_head_x = 0;
_head_y = 0;

_wiggle = true;
_wiggle_sin = 0;

GoState = "undefined";
State = "undefined";
OriginalHeadIndex = 0;
Action_Time = 0;
ActionEndTime = 0;

function DestAnimACT(){
	Anim_Destroy(id, "_body_y");
	Anim_Destroy(id, "_body_x");
	
	_body_x = 0;
	_body_y = 0;
	
	return true;
}
//TestEffectPosY = 0;
