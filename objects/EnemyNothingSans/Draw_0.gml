if (_wiggle){
	_wiggle_sin ++;
	_body_x = (sin((_wiggle_sin * 0.1)) * 1.4);
	_body_y = (sin((_wiggle_sin * 0.2)) / 0.5);
	_head_x = (sin((_wiggle_sin * 0.1)) * 0.4);
	_head_y = (sin((_wiggle_sin * 0.2)) * 0.3);
	_leg_movex = (sin((_wiggle_sin * 0.1)) * 1.4);
}
draw_sprite_pos(sprNothingLegs, 0, (((x - 42) + _leg_movex) + 3), ((((y - 22) + 66 + _body_y * 1.5) + 32) - 115), (((x + 42) + _leg_movex) + 3), ((((y - 22) + 66 + _body_y * 1.5) + 32) - 115), ((x + 42) + 3), ((((y + 22) + 66) + 32) - 115), ((x - 42) + 3), ((((y + 22) + 66) + 32) - 115), DrawAlpha);
draw_sprite_ext(_body_sprite, _body_image, ((x + (_body_init_x * 2)) + (_body_x * 2)), ((y + (_body_init_y * 1.4)) + (_body_y * 1.5)), 2, 2, 0, c_white, DrawAlpha);
draw_sprite_ext(sprNothingHead, _head_image, ((((x + (_body_init_x * 2)) + (_body_x * 2)) + (_head_init_x * 2)) + (_head_x * 2)), ((((y + (_body_init_y * 1.5)) + (_body_y * 1.5)) + (_head_init_y * 1.5)) + (_head_y * 1.5)), 2, 2, 0, 0xFFFFFF, DrawAlpha);
