if (mode == 2){
	audio_play_sound(SndAppear_0, 1, 0);
	Anim_Create(id, "SwapInitX", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 0, 100, 60);
	Anim_Create(id, "SwapInitXstart", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 100, 60, 80);
	Anim_Create(id, "SwapInitYstart", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 180, 30);
	Anim_Create(id, "image_alpha", 0, 0, 1, -1, 30, 160);
}
if (mode == 4){
	audio_play_sound(SndKakakaZi, 1, 0);
	for (var i = 0; i < 3; i++){
		Anim_Create(id, "alpha_" + string(i), ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 1, 20, (i * 5));
		Anim_Create(id, "alpha_" + string(i), ANIM_TWEEN.EXPO, ANIM_EASE.IN, 1, -1, 30, 30 + (i * 10));
	}
}
if (mode == 6){
	depth = load.Depth[|9] - 1;
	
	Anim_Create(id, "DeathRadius", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 132, 20);
	Anim_Create(id, "DeathRadius", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 132, -132, 20, 30);
	alarm[1] = 50;
}
if (mode == 7){
	audio_replay_sound(Sndbone, 1, 0);
	Anim_Create(id, "MurderOutPosX", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 200, 60);
	Anim_Create(id, "image_alpha", 0, 0, 1, -1, 60, 80);
}
if (mode == 8){
	for (var i = 0; i < 4; i ++;){
		Anim_Create(id, "KillerScaleXPos" + string(i), ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 200, 20, (i * 10));
		if (i >= 3) then Anim_Create(id, "KillerScaleYPos", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 200, 20, (i * 15));
	}
	Anim_Create(id, "KillerScaleYPosX", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 18, 20, 60);
	Anim_Create(id, "image_alpha", 0, 0, 1, -1, 10, 80);
}