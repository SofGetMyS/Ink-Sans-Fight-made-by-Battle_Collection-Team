if (wiggle){
	wiggle_Sin += 0.1;
	body_x = ((body_x - sin(wiggle_Sin)) / 1.5);
	body_y = ((body_y - sin((wiggle_Sin * 2))) / 1.4);
	head_x = ((head_x - sin((-0.16 + wiggle_Sin))) / 1.4);
	head_y = ((head_y - sin((-0.16 + (wiggle_Sin * 2)))) / 1.6);
}