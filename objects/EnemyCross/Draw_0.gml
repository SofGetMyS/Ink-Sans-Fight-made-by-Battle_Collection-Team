/// @desc BasicDraw
var _wiggle = ((sin(_wiggle_time / 12)) * 2), _get_body_w_glitch = sprite_get_width(SprCrossBody);
if (_chara_draw){
	switch (_chara_draw_state){
		case (0):
			draw_sprite_ext(SprXtaleCharaGhost, 0, (x + 80), ((y - 84) + (_wiggle / 3.5)), 2, 2, 0, c_white, 0.4);
			break;
		case (1):
			draw_sprite_ext(SprXtaleCharaLeg, 0, (x - 5), (y - 28), 2, 2, 0, c_white, 1);
			draw_sprite_ext(SprXtaleCharaBody, 0, (x + 4), ((y - 42) + _wiggle), 2, 2, 0, c_white, 1);
			draw_sprite_ext(SprXtaleCharaHead, 0, (x + 4), ((y - 79) + (_wiggle / 2)), 2, 2, 0, c_white, 1);
			break;
	}
}
if (_chara_draw_state != 1){
	draw_sprite_ext(SprCrossLeg, 0, (x - 5), (y + 50), 2, 2, 0, c_white, 1);
	draw_sprite_ext(SprCrossBody, _cross_body_image, (x), ((y - 39) + _wiggle), 2, 2, 0, c_white, 1);
	draw_sprite_ext(SprCrossPendant, 0, (x), ((y - 67) + _wiggle), 2, 2, 0, c_white, 1);
	draw_sprite_ext(SprCrossHead, 0, (x), ((y - 77) + (_wiggle / 2)), 2, 2, 0, c_white, 1);
	draw_sprite_ext(SprCrossVelveteen, (_wiggle_time / 6), (x - 2), ((y - 87) + _wiggle), 2, 2, 0, c_white, 1);
}



draw_text(32, 32, mouse_x);
draw_text(32, 62, mouse_y);
draw_text(32, 92, x);
draw_text(32, 122, y);
