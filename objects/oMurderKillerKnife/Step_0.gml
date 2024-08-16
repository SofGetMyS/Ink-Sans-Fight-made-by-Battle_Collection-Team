image_index += 0.1;

if (image_index > 5){
	but = instance_create_depth(x, y, 0, oMurderKillerKnifeBeam);
	but.image_angle = image_angle;
	instance_destroy();
}