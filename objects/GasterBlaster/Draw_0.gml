/// @description Draw Self
draw_self();
if (Colour == 1)
	image_blend = make_color_rgb(20, 196, 255);
if (Colour == 2)
	image_blend = make_color_rgb(248, 148, 29);

switch (sprite_index){
	case (newSprOuterGB):
		if (image_index >= 3 && image_index < 5){
			var _PartSys = variable_instance_get(Bout, "GB_Part_S"), _PartTyp = variable_instance_get(Bout, "GB_Part_T");
			part_particles_create(_PartSys, x, y, _PartTyp, 6);
		}
		break;
	case (SprCrossGasterBlaster):
		_crossgb_effect_index += 0.1;
		draw_sprite_ext(SprCrossGasterBlasterEff, _crossgb_effect_index, x, (y - 6), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
}
