/// @description Settings
if (WaveChange){
	Siner += 0.28;
	WaveBuff = ((sin(Siner) * 0.4) + (1 * image_xscale));
    image_xscale = lerp(image_xscale, WaveBuff, 0.15);
	//image_alpha = lerp(image_alpha, WaveBuff, 0.15)
}else{
	if (destroy){
		Anim_Create(id, "image_xscale", 0, 0, image_xscale, -image_xscale*2, 15);
		Anim_Create(id, "image_alpha", 0, 0, image_alpha, -image_alpha*2, 25);
		destroy = false;
	}
	if (!image_alpha){
		instance_destroy();
	}
}

/*if (WaveChange)
{
	Siner += 0.28;
	WaveBuff = ((sin(Siner) * 0.4) + (1 * image_xscale));
    image_xscale = lerp(image_xscale, WaveBuff, 0.15);
	//image_alpha = lerp(image_alpha, WaveBuff, 0.15)
}
else
{
	image_alpha = lerp(image_alpha, 0, 0.1);
	image_xscale = lerp(image_xscale, 0, 0.2);
}
if (!image_alpha)
{
	instance_destroy();
}









