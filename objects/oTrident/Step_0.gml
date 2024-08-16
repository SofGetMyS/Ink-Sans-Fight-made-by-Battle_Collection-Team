if (mode == 0){
	WarnTime --;
	if (WarnTime == 0){
		IsWarn = false;
		Anim_Create(id, "y", 0, 0, y, (ScrGetboard_down()) - y, 5);
		audio_play_sound(SndBigDudeCr, 1, 0);
	}
	if (WarnTime == -5){
		Camera_Shake(4, 4, 2, 2);
	}
	if (WarnTime == -30){
		Anim_Create(id, "y", 0, 0, y, (ScrGetboard_up() - 10) - y, 10);
	}
	if (WarnTime == -40){
		instance_destroy();
	}
};