/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(SprInkScarf, 0, (x + _body_x) - 35, (y + _body_y) - 120, 2, 2, (sin((_wiggle_sin * 0.1)) * 1.7), c_white, 1);
//draw_sprite_tiled_ext(SprStars, 0, 0, yy, 2, 2, c_white, 1);;

draw_sprite_ext(SprInkBrush, 0, (x + _body_x + 17), ((y + _body_init_y) + _body_y) - 40, 2, 2, 0, c_white, _alpha)
draw_sprite_ext(SprInkLegs, LegImage, x, y, 2, 2, 0, c_white, _alpha);
//draw_sprite_ext(Elaina, _head_image, ((x + _head_init_x) + _head_x + 7), ((y + _head_init_y) + _head_y - 15), 0.4, 0.4, 0, c_white, _alpha);
draw_sprite_ext(_body_sprite, _body_image, ((x + _body_init_x) + _body_x), ((y + _body_init_y) + _body_y - 30), 2, 2, 0, c_white, _alpha);
draw_sprite_ext(SprInkHead, _head_image, ((x + _head_init_x) + _head_x + 7), ((y + _head_init_y) + _head_y - 15), 2, 2, 0, c_white, _alpha);

if (_head_image == 5){
	draw_sprite_ext(SprInkHeadEyeGeno, Geno_ink_eye_image, ((x + _head_init_x) + _head_x + 7), ((y + _head_init_y) + _head_y - 15), 2, 2, 0, c_white, _alpha);
}
if (OuterPart){
	part_particles_create(Part_S, random_range(-40, 680), 0, Part_Outer, 1);
	part_particles_create(Part_S, random_range(-40, 680), 0, Part_Outer0, 1);
	
	part_particles_create(Part_S, random_range(-40, 680), 640, Part_T0, 2);
}

if (Phase == 3.5) { for (var i = 0; i < 8; i ++){ if (!is_undefined(INST[i]) && !instance_exists(INST[i])) then draw_sprite_ext(spr_sanss_glitch, irandom_range(0, 7), ((x + _body_init_x) + _body_x) + (_posact_x), ((y + _body_init_y) + _body_y - 30) + (_posact_y), 2, 2, _indact, Col_Bottle[i], 0.8); }; };