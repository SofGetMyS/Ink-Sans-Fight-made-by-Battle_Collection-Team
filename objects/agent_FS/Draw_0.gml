/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(DrawLeg, 0, x + leg_x + Leg_init_x, y + 250 - 200 + leg_y + Leg_init_y, 2, 2, 0, c_white, DrawAlpha);
draw_sprite_ext(DrawHead, 0, x + head_x + Head_init_x, y + 165 - 200 + head_y + Head_init_y, 2, 2, 0, c_white, DrawAlpha);
draw_sprite_ext(DrawBody, 0, x + body_x + Body_init_x, y + 205 - 200 + body_y + Body_init_y, 2, 2, 0, c_white, DrawAlpha);

//gpu_set_blendenable(true);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[0], (x - Body_w) + BodyGlitch_x * 2 + Body_init_x, y - BodyGlitch_y+Body_init_y+Body_Glitch_y_init, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[1], (x - Head_w) + HeadGlitch_x * 2 + Head_init_x, y - Head_h - HeadGlitch_y + Head_init_y+Head_Glitch_y_init, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[2], (x - Leg_w) + LegGlitch_x * 2 + Leg_init_x, y + LegGlitch_y + Leg_init_y+Leg_Glitch_y_init, 2, 2, 0, DrawColor, DrawAlpha);
//gpu_set_blendenable(false);
