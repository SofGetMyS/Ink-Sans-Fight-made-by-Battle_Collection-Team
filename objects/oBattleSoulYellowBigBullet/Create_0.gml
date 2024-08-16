valColorBlend = 0;

image_xscale = 0;
image_yscale = 0.5;

Anim_Create(id, "valColorBlend", 0, 0, 0, 255, 10);
Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 1, 10);
Anim_Create(id, "image_yscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0.5, 0.5, 10);

audio_replay_sound(Snd_fly, 0, 0);