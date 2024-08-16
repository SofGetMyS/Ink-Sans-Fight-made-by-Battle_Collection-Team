draw_self();
dir = lerp(dir, image_angle, 0.2);
var x0 = lengthdir_x(image_yscale/2 + sprite_height/1.7, dir + 90)
var y0 = lengthdir_y(image_yscale/2 + sprite_height/1.7, dir + 90)
var xs = point_direction(x + lengthdir_x(image_yscale/2 + sprite_height/1.7, dir + 90), y + lengthdir_y(image_yscale/2 + sprite_height/1.7, dir + 90), x, y);
var ys = point_direction(x + lengthdir_x(-image_yscale/2 - sprite_height/1.7, dir + 90), y + lengthdir_y(-image_yscale/2 - sprite_height/1.7, dir + 90), x, y);

gpu_set_blendmode(bm_add);
var cl = make_color_rgb(0, 255, 255);
draw_primitive_begin(pr_trianglestrip);

//draw_vertex_texture_color(x, y);
gpu_set_blendmode(bm_normal);

draw_sprite_ext(SprDreamStick, 2, x + lengthdir_x(image_yscale/2 + sprite_height/1.7, dir + 92), y + lengthdir_y(image_yscale/2 + sprite_height/1.7, dir + 92), 2, 1.5, xs + 90, c_white, image_alpha);
draw_sprite_ext(SprDreamStick, 1, x + lengthdir_x(-image_yscale/2 - sprite_height/1.7, dir + 92), y + lengthdir_y(-image_yscale/2 - sprite_height/1.7, dir + 92), 2, 1.5, ys + 90, c_white, image_alpha);
