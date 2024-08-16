depth = load.Depth[|9];
image_yscale = 114514;

Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 2, 10);
Anim_Create(id, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 2, -2, 10, 10);
Anim_Create(id, "image_alpha", 0, 0, 1, -1, 10, 20);

audio_replay_sound(snd_gb_release, 1, false);

alarm[0] = 30;