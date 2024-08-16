if (start){
	time++;
}
if (image_blend == undefined || hp == 0){
	instance_destroy();
	show_message("Mika我爱死你辣！！！！");
}
if (time == 60){
	with (instance_create_depth(x, y, 0, BottleBoom)){
		audio_play_sound(SndCreate, 0, 0);
		image_blend = other.image_blend;
	}
	image_index += 1;
}
for (var i = 0; i < 5; i ++){
	switch (hp){
		case i:
			siner -= 0.1;
			y = 30+sin(siner * 0.2) * hp;
			break;
	}
	if (hp == i && hp != 0){
		image_alpha = i/5;
		if ((time % hp * 100) == 0){
			_offset_x = random_range(2, -2);
		}
	}else if (hp == 0){
		image_alpha = 0;
		_offset_x = 0;
		global.P3EX = true;
		global.P3EX_Col_Boss = image_blend;
		ScrBottleBreakCreateCir(x, y, image_blend, 1, 20);
		instance_destroy();
	}
}