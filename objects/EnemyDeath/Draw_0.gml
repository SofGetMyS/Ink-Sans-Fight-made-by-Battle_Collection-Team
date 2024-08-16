if (DrawSickle == true){
	draw_sprite_ext(SprDeathSickle, 0, x + Sickle_x + Sickle_init_x, y + 50 + Sickle_y + Sickle_init_y, 2, 2, SickleRotate, c_white, 0.8);
}
draw_sprite_ext(SprDeathHead, 0, x + head_x + Head_init_x, y + 165 - 200 + head_y + Head_init_y, 2, 2, 0, c_white, DrawAlpha);
draw_sprite_ext(SprDeathBody, 0, x + body_x + Body_init_x, y + 205 - 200 + body_y + Body_init_y, 2, 2, 0, c_white, DrawAlpha);

draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[0], (x - Body_w) + BodyGlitch_x * 2 + Body_init_x, y - BodyGlitch_y+Body_init_y+Body_Glitch_y_init, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[1], (x - Head_w) + HeadGlitch_x * 2 + Head_init_x, y - Head_h - HeadGlitch_y + Head_init_y+Head_Glitch_y_init, 2, 2, 0, DrawColor, DrawAlpha);