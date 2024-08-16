surface_set_target(Battle_GetBoardSurface()){
	draw_self();

	if (IsWarn == true) {
		draw_set_color(WarnBlend);
		draw_set_alpha(0.8);
		draw_rectangle(x - sprite_get_width(sprite_index)/1.5, 0, x + sprite_get_width(sprite_index)/1.5, 480, 0);
	};
}surface_reset_target();