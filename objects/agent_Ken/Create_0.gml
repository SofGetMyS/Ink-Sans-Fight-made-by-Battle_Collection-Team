depth= load.Depth[|1]-1;

_body_sprite = SprKenBody;
_org_body_spr = SprKenBody;
_body_image = 0;
_head_image = 0;

_body_init_x = 0;
_body_init_y = -32;
_head_init_x = 0;
_head_init_y = -19;
_leg_init_x = -1;
_leg_init_y = 0;

_wiggle = true;
_wiggle_sin = 0;

GoState = "undefined";
State = "undefined";
OriginalHeadIndex = 0;
Action_Time = 0;
ActionEndTime = 0;

_leg_x = 0;
_leg_y = 0;
_body_x = 0;
_body_y = 0;
_head_x = 0;
_head_y = 0;

function DestAnimACT(){
	Anim_Destroy(id, "_body_y");
	Anim_Destroy(id, "_body_x");
	
	_body_x = 0;
	_body_y = 0;
	
	return true;
}

GetGlitchIndex = array_create(3, irandom_range(0, 7));

alarm[0] = 5;
alarm[1] = 25;
function SetSansSprite(){
	Head_w = sprite_get_width(SprKenHead);
	Body_w = sprite_get_width(SprKenBody);
	Leg_w = sprite_get_width(SprKenLegs);
	
	Head_h = sprite_get_height(SprKenHead);
	Body_h = sprite_get_height(SprKenBody);
	Leg_h = sprite_get_height(SprKenLegs);
}
function SetGlitchxy(){	
		HeadGlitch_x = random(Head_w);
		BodyGlitch_x= random(Body_w);
		LegGlitch_x = random(Leg_w);

		HeadGlitch_y = random(Head_h);
		BodyGlitch_y = random(Body_h);
		LegGlitch_y = random(Leg_h);
}
DrawColor = c_white;

Head_Glitch_y_init = 0;
Leg_Glitch_y_init = 0;
Body_Glitch_y_init = 0;

SetSansSprite();
SetGlitchxy();
