/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add);
for (i = 0; i < 4; i++;){
	var XX = x + lengthdir_x(Shadow_len[i], Shadow_dir[i]);
	var YY = y + lengthdir_y(Shadow_len[i], Shadow_dir[i])
	draw_set_color(c_white);
	draw_line_width(x, y, XX, YY, 2);
	if (index >= 19){
		draw_sprite_ext(sprite_index, 20, XX, YY, image_xscale, image_yscale, image_angle, c_white, 0.6);
	}	
}
draw_self();

//draw_line_color()
gpu_set_blendmode(bm_normal);