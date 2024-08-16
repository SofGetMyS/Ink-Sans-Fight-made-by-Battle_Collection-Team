part_type_sprite(EspeStickTypPart, _spr_part, false, false, false);
part_type_orientation(EspeStickTypPart, image_angle, image_angle, 0, 0, 0);
part_type_orientation(EspeStickTypPartEffOran, _tar_dir + 135, _tar_dir + 135, 0, 0, 0);//angle --
part_type_orientation(EspeStickTypPartEffBlue, _tar_dir + 135, _tar_dir + 135, 0, 0, 0);//angle ++
part_particles_create(Bout.EspeStickSysPart2, x, y, EspeStickTypPart, 1);
if (_canPlayIndex){
	time ++;
	if (image_index < 2) then image_index += 0.4; else {
		draw_sprite_ext(SprEspeBlueStick, 0, _blue_sti_x, _blue_sti_y, 2, 2, image_angle, c_white, 1);
		draw_sprite_ext(SprEspeOrangeStick, 0, _orange_sti_x, _orange_sti_y, 2, 2, image_angle, c_white, 1);
	};
	if (x != xprevious || y != yprevious) {
		if (speed > 0) {
			/*
			*/
			//DID: 这个B ESPE 特效还得重写
			part_particles_create(Bout.EspeStickSysPart, x + lengthdir_x(-25, _tar_dir), y + lengthdir_y(-25, _tar_dir), EspeStickTypPartEffBlue, 1);
			part_particles_create(Bout.EspeStickSysPart, x + lengthdir_x(-25, _tar_dir), y + lengthdir_y(-25, _tar_dir), EspeStickTypPartEffOran, 1);
		};
	};	 
};
draw_sprite_ext(SprEspeStick, image_index, x, y, 2, 2, image_angle, image_blend, image_alpha);
switch (time){
	case 4: Anim_Create(id, "StickLen", ANIM_TWEEN.BACK, ANIM_EASE.OUT, 0, -15, 8); break;
	case AttackTime: _spr_part = SprEspeStickComp; Anim_Create(id, "speed", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, -8, 6); Anim_Create(id, "speed", ANIM_TWEEN.SINE, ANIM_EASE.IN, -8, 18, 10, 6); break;
};
if (time == (AttackTime + 30)){
	speed = 16;
}
direction = _tar_dir;
image_angle += (speed * 1.2);
//if (keyboard_check_pressed(ord("W"))) then _dir += 10;
//if (keyboard_check_pressed(ord("S"))) then _dir -= 10;
//draw_set_color(c_white);
//draw_set_font(font_load);
//draw_text(32, 32, _dir);
