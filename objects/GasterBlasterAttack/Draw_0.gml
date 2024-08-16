/// @description Draw self
//draw_self();
if (Colour == 0 && (!Fell_blend) && (!Outerblend)){
	image_blend = c_white;
}else if (!Outerblend){
	image_blend = c_red;
}else{
	image_blend = c_blue;
}
if (DeathBlend == true) then sprite_index = SprDeathGasterBlasterBeam;
	//image_blend = make_color_rgb(152, 120, 255);
if (Colour == 1)
	image_blend = make_color_rgb(20, 196, 255);
if (Colour == 2)
	image_blend = make_color_rgb(248, 148, 29);
draw_sprite_ext(sprite_index, 0, (x + lengthdir_x(41, (image_angle - 90))), (y + lengthdir_y(41, (image_angle - 90))), image_xscale, 2, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 1, (x + lengthdir_x(71, (image_angle - 90))), (y + lengthdir_y(71, (image_angle - 90))), image_xscale, (image_yscale*9999*image_yscale), image_angle, image_blend, image_alpha);









