draw_sprite_ext(spr_pixel,0,_bg_x,_bg_y,_bg_width,_bg_height,_angle,color_bg,alpha_bg);

_point_x = x - left; _point_y = y - up; event_user(0); var Sur_X0 = _point_x, Sur_Y0 = _point_y;
_point_x = x + right; _point_y = y - up; event_user(0); var Sur_X1 = _point_x, Sur_Y1 = _point_y;
_point_x = x - left; _point_y = y + down; event_user(0); var Sur_X2 = _point_x, Sur_Y2 = _point_y;
_point_x = x + right; _point_y = y + down; event_user(0); var Sur_X3 = _point_x, Sur_Y3 = _point_y;
var tex = surface_get_texture(_surface);
draw_primitive_begin_texture(pr_trianglestrip, tex);
draw_vertex_texture_color(Sur_X0, Sur_Y0, (Sur_X0 / 640), (Sur_Y0 / 480), color, alpha);
draw_vertex_texture_color(Sur_X1, Sur_Y1, (Sur_X1 / 640), (Sur_Y1 / 480), color, alpha);
draw_vertex_texture_color(Sur_X2, Sur_Y2, (Sur_X2 / 640), (Sur_Y2 / 480), color, alpha);
draw_vertex_texture_color(Sur_X3, Sur_Y3, (Sur_X3 / 640), (Sur_Y3 / 480), color, alpha);
draw_primitive_end();

var _draw_board = function (){
	draw_sprite_ext(spr_pixel,0,_frame_up_x,_frame_up_y,_frame_up_width,_frame_up_height,_angle,color_frame,alpha_frame);
	draw_sprite_ext(spr_pixel,0,_frame_left_x,_frame_left_y,_frame_left_width,_frame_left_height,_angle,color_frame,alpha_frame);
	draw_sprite_ext(spr_pixel,0,_frame_down_x,_frame_down_y,_frame_down_width,_frame_down_height,_angle,color_frame,alpha_frame);
	draw_sprite_ext(spr_pixel,0,_frame_right_x,_frame_right_y,_frame_right_width,_frame_right_height,_angle,color_frame,alpha_frame);
};

switch(vEffect){
	case 0: _draw_board(); break;
	case 1:
		if (!instance_exists(oBoardEspe)) { instance_create_depth(_tar_espeboard_xx, _tar_espeboard_yy, 0, oBoardEspe); exit; };
		oBoardEspe.x = _tar_espeboard_xx;
		oBoardEspe.y = _tar_espeboard_yy;
		var _sur = surface_create(640, 480), _eff_col = [c_red, c_red, c_lime, c_blue, c_blue ], _tar_x = [_tar_xx, oBoardEspe.x], _tar_y = [_tar_yy, oBoardEspe.y];
		surface_set_target(_sur); _draw_board(); surface_reset_target();
		gpu_set_blendmode(bm_add);
			//draw_surface(_sur, _shake_lev * random_range(-1, 1), _shake_lev * random_range(-1, 1));
			for (var i = 0; i < 2; i ++) {
				var ii = 0, _shake_range = .7;
				if (ii == 2){ _shake_range = .2 };
				repeat (5) { draw_surface_ext(_sur, _tar_x[i] + _shake_lev * random_range(-_shake_range, _shake_range), _tar_y[i] + _shake_lev * random_range(-_shake_range, _shake_range), 1, 1, 0, _eff_col[ii], 1); ii++; }; 
			};
		gpu_set_blendmode(bm_normal);
		surface_free(_sur);
		break;
}