/// @desc
//draw_sprite_ext(SprKenLegs, 0, (((x - 42) + _leg_movex) + 3), ((((y - 22) + 66 + _body_y * 1.5) + 32) - 115), (((x + 42) + _leg_movex) + 3), ((((y - 22) + 66 + _body_y * 1.5) + 32) - 115), ((x + 42) + 3), ((((y + 22) + 66) + 32) - 115), ((x - 42) + 3), ((((y + 22) + 66) + 32) - 115), DrawAlpha);
//draw_sprite_ext(_body_sprite, _body_image, ((x + (_body_init_x * 2)) + (_body_x * 2)), ((y + (_body_init_y * 1.4)) + (_body_y * 1.5)), 2, 2, 0, c_white, DrawAlpha);
//draw_sprite_ext(SprKenHead, _head_image, ((((x + (_body_init_x * 2)) + (_body_x * 2)) + (_head_init_x * 2)) + (_head_x * 2)), ((((y + (_body_init_y * 1.5)) + (_body_y * 1.5)) + (_head_init_y * 1.5)) + (_head_y * 1.5)), 2, 2, 0, 0xFFFFFF, DrawAlpha);

draw_sprite_ext(SprKenLegs, 0, x + _leg_x + _leg_init_x, y + 250 - 200 + _leg_y + _leg_init_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(_body_sprite, _body_image, x + _body_x + _body_init_x, y + 205 - 200 + _body_y + _body_init_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprKenHead, _head_image, x + _head_x + _head_init_x, y + 165 - 200 + _head_y + _head_init_y, 2, 2, 0, c_white, 1);

draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[0], (x - Body_w) + BodyGlitch_x * 2 + _body_init_x, y - BodyGlitch_y+_body_init_y+Body_Glitch_y_init, 2, 2, 0, DrawColor, 1);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[1], (x - Head_w) + HeadGlitch_x * 2 + _head_init_x, y - Head_h - HeadGlitch_y + _head_init_y+Head_Glitch_y_init, 2, 2, 0, DrawColor, 1);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[2], (x - Leg_w) + LegGlitch_x * 2 + _leg_init_x, y + LegGlitch_y + _leg_init_y+Leg_Glitch_y_init, 2, 2, 0, DrawColor, 1);