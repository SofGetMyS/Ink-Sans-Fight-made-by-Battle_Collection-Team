image_angle += rotate;


if (y < -100 && vspeed < 0){
	instance_destroy();
}
if (y > 580 && vspeed > 0){
	instance_destroy();
}
if (x < -100 && hspeed < 0){
	instance_destroy();
}
if (x > 740 && hspeed > 0){
	instance_destroy();
}

if (Lenable == true){
	x = (LenPosX + lengthdir_x(Len, LenDir));
	y = (LenPosY + lengthdir_y(Len, LenDir));
	
	Len += LenMove;

	LenDir += LenDirMove;
}
switch (mode){
	case 1:
		if ((StarGlobalTimer % StarGlobalTimerTarget) == 0){
			but = instance_create_depth(x, y, 0, object_index);
			but.image_alpha = 0.7;
			but.image_xscale = 0.5;
			but.image_yscale = 0.5;
			Anim_Create(but, "hspeed", 0, 0, 0, 7, 10, 20);
			Anim_Create(but, "rotate", 0, 0, 0, -7, 10, 20);
		}
		break;
		
	case 2:
		if ((StarGlobalTimer % StarGlobalTimerTarget) == 0){
			but = instance_create_depth(x, y, 0, object_index);
			but.image_alpha = 0.7;
			but.image_xscale = 0.5;
			but.image_yscale = 0.5;
			Anim_Create(but, "hspeed", 0, 0, 0, -7, 10, 20);
			Anim_Create(but, "rotate", 0, 0, 0, 7, 10, 20);
		}
		break;
}
if (FadeIn){
	Anim_Create(id, "image_alpha", 0, 0, 0, 1, 20);
	FadeIn = false;
}