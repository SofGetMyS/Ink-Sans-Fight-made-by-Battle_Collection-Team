var Surface_Worley = surface_create(room_width, room_height);

surface_set_target(Surface_Worley);
draw_clear_alpha(0, 0);
shader_set(ShdWorley);
shader_set_uniform_f(ftime, t);
draw_set_color(c_white);


//gpu_set_blendmode(bm_normal);
shader_reset();
surface_reset_target();

draw_surface_ext(Surface_Worley, 0, 0, 1, 1, 0, c_white, 1);

surface_free(Surface_Worley);