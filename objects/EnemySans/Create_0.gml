/// @description Insert description here
// You can write your code in this editor
depth = load.Depth[|1];

GetGlitchIndex = array_create(3, irandom_range(0, 7));

alarm[0] = 5;
alarm[1] = 25;
function SetSansSprite(){
	Head_w = sprite_get_width(DrawHead);
	Body_w = sprite_get_width(DrawBody);
	Leg_w = sprite_get_width(DrawLeg);
	
	Head_h = sprite_get_height(DrawHead);
	Body_h = sprite_get_height(DrawBody);
	Leg_h = sprite_get_height(DrawLeg);
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
DrawHead = -1;
DrawBody = -1;
DrawLeg = -1;
DrawAlpha = 1;

Head_init_x = 0;
Head_init_y = 0;
Body_init_x = 0;
Body_init_y = 0;
Leg_init_x = 0;
Leg_init_y = 0;
leg_x = 0;
leg_y = 0;
body_x = 0;
body_y = 0;
head_x = 0;
head_y = 0;

wiggle = true;
wiggle_Sin = 0;

Head_Glitch_y_init = 0;
Leg_Glitch_y_init = 0;
Body_Glitch_y_init = 0;