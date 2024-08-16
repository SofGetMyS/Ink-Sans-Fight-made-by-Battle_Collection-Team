
depth = load.Depth[|1];

GetGlitchIndex = array_create(3, irandom_range(0, 7));

alarm[0] = 5;
alarm[1] = 25;

Head_w = sprite_get_width(SprMurderHood);
Body_w = sprite_get_width(SprMurderBody);
Leg_w = sprite_get_width(SprMurderLeg);
	
Head_h = sprite_get_width(SprMurderHood);
Body_h = sprite_get_width(SprMurderBody);
Leg_h = sprite_get_width(SprMurderLeg);

HeadGlitch_x = random(Head_w);
BodyGlitch_x= random(Body_w);
LegGlitch_x = random(Leg_w);

HeadGlitch_y = random(Head_h);
BodyGlitch_y = random(Body_h);
LegGlitch_y = random(Leg_h);

DrawColor = c_dkgrey;
DrawAlpha = 1;
Cloak_image = 0;
_SMPAlpha = 0;
Anim_Create(id, "_SMPAlpha", 0, 0, 0, 0.4, 30, 90);
_body_y = 0;
_wiggle_sin = 0;

