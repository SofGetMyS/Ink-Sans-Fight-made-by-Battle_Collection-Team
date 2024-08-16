if (mode == 2) {
	draw_set_alpha(image_alpha);
	draw_rectangle_color(x - SwapInitXstart, y, x - SwapInitX, y - SwapInitYstart, c_aqua, c_aqua, c_aqua, c_aqua, 0);
	draw_rectangle_color(x + SwapInitXstart, y, x + SwapInitX, y - SwapInitYstart, c_aqua, c_aqua, c_aqua, c_aqua, 0);
} else if (mode == 4) {
	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_color(x - scale, y - scale, c_yellow, alpha_0);
	draw_vertex_color(x + scale, y - scale, c_orange, alpha_1);
	draw_vertex_color(x - scale, y + scale, c_orange, alpha_1);
	draw_vertex_color(x + scale, y + scale, c_maroon, alpha_2);
	draw_primitive_end();
} else if (mode == 6) {
	draw_set_circle_precision(256);
	draw_circle_color(x, y, DeathRadius, c_black, c_black, 0);
	for (var i = 0; i < 12; i ++;) { draw_circle_color(x, y, (DeathRadius + (i * 0.5)), #2D2F31, #2D2F31, 1); };
	draw_set_circle_precision(32);
} else if (mode == 7) {
	draw_set_alpha(image_alpha);
	draw_rectangle_color(x - 100, y + 50, x - 100 + MurderOutPosX, y - 160, c_dkgray, c_dkgray, c_black, c_dkgray, 0);
} else if (mode == 8) {
	var KillerCol = [c_white, c_dkgrey, c_maroon, #FF6969];
	for (var i = 0; i < 4; i++;) { draw_sprite_ext(spr_pixel, 0, x-(variable_instance_get(id, "KillerScaleXPos" + string(i)))/2, y, (variable_instance_get(id, "KillerScaleXPos" + string(i))), -170, 0, KillerCol[i], image_alpha); };
	for (var i = 0; i < 5; i++;) { draw_sprite_ext(spr_pixel, 0, (x-(variable_instance_get(id, "KillerScaleXPos0") + KillerScaleYPosX)/2) + (20 + (i * 40)), y - 170, KillerScaleYPosX + 6, KillerScaleYPos, 0, c_black, image_alpha); };
} else if (mode == 9){
	draw_set_alpha(image_alpha);
	for (var i = 0; i < 4; i++;) { draw_rectangle_color(x + (i * 2) - 100, y + (i * 2), x + (i * 2) + 100, y + (i * 2) + (KillerEndPosY), c_red, c_red, c_red, c_red, KillerOutlinable); };
};
if (sprite_exists(sprite_index)) { draw_self(); };