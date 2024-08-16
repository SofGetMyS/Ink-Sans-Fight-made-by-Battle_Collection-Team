var _body_wid = sprite_get_width(SprInkBody),
	_body_hei = sprite_get_height(SprInkBody);
if (Phase == 3 || Phase == 3.5) {
	_posact_x = irandom_range(_body_wid, -_body_wid);
	_posact_y = irandom_range(_body_hei, -_body_hei);
	_indact = (choose(0, 90));
};
alarm[3] = 15;