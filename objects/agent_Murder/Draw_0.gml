Cloak_image+= 0.1;
//MurderPapyrus alpha is 0.6
draw_sprite_ext(SprMurderPapyrusCloak, Cloak_image, x + 88, y - 98, 2, 2, 0, c_white, _SMPAlpha);
draw_sprite_ext(SprMurderPapyrusHead, Cloak_image, x + 118, y - 80, 2, 2, 0, c_white, _SMPAlpha);
draw_sprite_ext(SprMurderPapyrusHand, 1, x + 58, y - 50, 2, 2, 0, c_white, _SMPAlpha);
draw_sprite_ext(SprMurderPapyrusHand, 0, x + 200, y - 50, 2, 2, 0, c_white, _SMPAlpha);

draw_sprite_ext(SprMurderLeg, 0, x, y + 50, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprMurderHood, 0, x - 5, y - 38 + _body_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprMurderBody, 0, x - 4, y - 18 + _body_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprMurderFace, 0, x - 6, y - 38 + _body_y, 2, 2, 0, c_white, 1);

//gpu_set_blendenable(true);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[0], (x - Body_w) + BodyGlitch_x * 2 - 4, y - BodyGlitch_y-38, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[1], (x - Head_w) + HeadGlitch_x * 2 - 5, y - Head_h - HeadGlitch_y, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[2], (x - Leg_w) + LegGlitch_x * 2, y + LegGlitch_y + 10, 2, 2, 0, DrawColor, DrawAlpha);
//gpu_set_blendenable(false);


//draw_text(32, 62, string(mouse_x));
//draw_text(32, 92, string(mouse_y));
//draw_text(32, 122, string(x));
//draw_text(32, 152, string(y));