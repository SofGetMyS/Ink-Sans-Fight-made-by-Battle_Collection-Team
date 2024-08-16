/// @desc 
var surface = surface_create(640, 480);
surface_set_target(surface);
draw_surface(application_surface, 0, 0);
surface_reset_target();
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
draw_set_color(c_white);
for (var i = 0; i < 16; i++){
	draw_surface_part(surface, 0, i, 640, 1, (0 + (lev * random_range(-1, 1))), (0 + i));
}
surface_free(surface);