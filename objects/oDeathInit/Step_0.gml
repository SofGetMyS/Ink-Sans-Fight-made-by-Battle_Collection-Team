CreateDelay ++;
switch (Mode){
	case 0:
		but = instance_create_depth(x, y, 0, object_index);
		but.image_angle = image_angle;
		but.Mode = 1;
		but.image_blend = c_black;
		break;
		
	case 1:
		if (CreateDelay >= 100){
			instance_destroy();
			//image_alpha -= 0.05;
		}
		break;
}
if (!image_alpha){
	instance_destroy();
}