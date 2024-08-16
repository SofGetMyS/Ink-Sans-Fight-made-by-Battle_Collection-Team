image_xscale = 2;
image_yscale = 2;

PartType = part_type_create();
part_type_life(PartType, 80, 80);
part_type_sprite(PartType, sprite_index, false, false, false);
part_type_scale(PartType, image_xscale, image_yscale);
//part_type_alpha3(ScythePartType, 0, 1, 0);
part_type_alpha1(PartType, 1);