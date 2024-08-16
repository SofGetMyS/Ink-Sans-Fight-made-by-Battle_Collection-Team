/// @desc 常见定义范围
//坐标变量定义
depth = load.Depth[|1] - 5;

GetGlitchIndex = array_create(3, irandom_range(0, 7));

alarm[0] = 5;
alarm[1] = 25;
function SetSansSprite(){
	Head_w = sprite_get_width(SprKillerHead);
	Body_w = sprite_get_width(SprKillerBody);
	Leg_w = sprite_get_width(SprKillerLeg);
	
	Head_h = sprite_get_height(SprKillerHead);
	Body_h = sprite_get_height(SprKillerBody);
	Leg_h = sprite_get_height(SprKillerLeg);
}
SetSansSprite();
function SetGlitchxy(){	
		HeadGlitch_x = random(Head_w);
		BodyGlitch_x= random(Body_w);
		LegGlitch_x = random(Leg_w);

		HeadGlitch_y = random(Head_h);
		BodyGlitch_y = random(Body_h);
		LegGlitch_y = random(Leg_h);
}
SetGlitchxy();
DrawAlpha = 1;
DrawColor = #F47B7B;
HeadPosX = 0;
HeadPosY = 0;
BodyPosX = 0;
BodyPosY = 0;

//Basic Set
//Wiggle = false;
WiggleSin = 0;
Action = false;
ActionIndex = 0;