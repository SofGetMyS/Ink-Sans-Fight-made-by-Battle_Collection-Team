var	_wiggle_shake = ((sin(_wiggle_time / 12)) * 2);

if (_wiggle){
	_wiggle_time ++;
	image_index += 0.4;
};

draw_sprite_ext(SprFatalErrorSansLeg, image_index, x, y + 65, 2, 2, 0, c_white, 1);
draw_sprite_ext(_body_spr, _body_image, x - 3, y - 34 + _wiggle_shake, 2, 2, 0, c_white, _bodyalpha);
draw_sprite_ext(SprFatalErrorSansHead, 0, x - 3, y - 60 + _wiggle_shake, 2, 2, 0, c_white, _bodyalpha);

draw_sprite_ext(SprFatalErrorIcon, 0, x - 3 + HeadGlitch_x, y - 60 + HeadGlitch_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprFatalErrorIcon, 0, x - 3 + BodyGlitch_x, y - 34 + BodyGlitch_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprFatalErrorIcon, 0, x + LegGlitch_x, y + 65 + LegGlitch_y, 2, 2, 0, c_white, 1);