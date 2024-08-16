depth = load.Depth[|1];

GetGlitchIndex = array_create(3, irandom_range(0, 7));

alarm[0] = 5;
alarm[1] = 25;
function SetSansSprite(){
	Head_w = sprite_get_width(SprDeathHead)/2;
	Body_w = sprite_get_width(SprDeathBody)/2;
	
	Head_h = sprite_get_height(SprDeathHead)/2;
	Body_h = sprite_get_height(SprDeathBody)/2;
}
function SetGlitchxy(){	
	HeadGlitch_x = random(Head_w);
	BodyGlitch_x = random(Body_w);

	HeadGlitch_y = random(Head_h);
	BodyGlitch_y = random(Body_h);
}
SetSansSprite();
SetGlitchxy();
Body_init_x = -3;
Head_init_x = -3;
Head_init_y = -11;
Body_init_y = -20;

DrawColor = #2D2F31;
DrawAlpha = 1;

Sickle_init_x = -60;
Sickle_init_y = -40;
Sickle_x = 0;
Sickle_y = 0;
SickleRotate = 0;
body_x = 0;
body_y = 0;
head_x = 0;
head_y = 0;

wiggle = false;
wiggle_Sin = 0;

Head_Glitch_y_init = 0;
Sickle_Glitch_y_init = 0;
Body_Glitch_y_init = 0;
DrawSickle = false;