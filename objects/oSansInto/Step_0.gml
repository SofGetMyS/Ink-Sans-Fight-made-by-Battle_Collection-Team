/// @description Insert description here
// You can write your code in this editor
if (mode == 0){
	Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 6, 30);
	Anim_Create(id, "image_yscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 6, 30);

	Anim_Create(id, "image_xscale", 0, 2, 6, -6, 20, 40);
	Anim_Create(id, "image_alpha", 0, 2, 1, -1, 20, 40);
	mode = -1;
}
if (mode == 1){
	sprite_index = FellStart;
	Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 6, 30);
	Anim_Create(id, "image_yscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 6, 30, 30);
	
	Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 6, -5, 30, 60);
	Anim_Create(id, "image_yscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 6, -6, 30, 90);
	Anim_Create(id, "image_alpha", 0, 2, 1, -1, 20, 90);
	mode = -1;
}
if (!image_alpha){
	instance_destroy();
}
if (mode == 3){
	sprite_index = SprStormStar;
	
	Anim_Create(id, "scale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 5, 30);
	Anim_Create(id, "image_alpha", 0, 0, 1, -1, 30, 50);
	
	mode = -2;
}
if (mode == -2){
	image_xscale = scale;
	image_yscale = scale;
	image_angle += 3;
}
if (mode == 5){
	sprite_index = -1;
	PartCreateTime ++;
	if ((PartCreateTime % 3) == 0 && PartCreateTime <= 90){
		part_particles_create(global.PartDustS, Scr_Getagent_x(), Scr_Getagent_y() - 20, global.PartDustT, 3);
	}
	if (PartCreateTime >= 180){
		instance_destroy();
	}
}
if (mode == 6){
	sprite_index = -1;
}


