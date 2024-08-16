image_speed = 0;

alarm[1] = 10;
function SetSansSprite(){
	Head_w = sprite_get_width(SprFatalErrorSansHead);
	Body_w = sprite_get_width(SprFatalErrorSansBody);
	Leg_w = sprite_get_width(SprFatalErrorSansLeg);
	
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

