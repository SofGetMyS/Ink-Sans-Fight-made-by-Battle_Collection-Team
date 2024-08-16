depth = load.Depth[|9] - 2;
PartFire = true;
image_xscale = 2;
image_yscale = 2;

ScythePartType = part_type_create();
part_type_life(ScythePartType, 80, 80);
part_type_sprite(ScythePartType, sprite_index, false, false, false);
part_type_scale(ScythePartType, image_xscale, image_yscale);
//part_type_alpha3(ScythePartType, 0, 1, 0);
part_type_alpha1(ScythePartType, 1);

///@desc 移动
MoveTo = function (_x, _y, _time, _delay) {
	Anim_Destroy(id, "x"); Anim_Destroy(id, "y");
	
	Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, x, _x - x, _time, _delay);
	Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, y, _y - y, _time, _delay);
}