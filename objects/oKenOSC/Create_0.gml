depth = load.Depth[|9];

Anim_Create(id, "x", ANIM_TWEEN.QUART, ANIM_EASE.OUT, x, _target_x-x, _tar_time);
Anim_Create(id, "y", ANIM_TWEEN.QUART, ANIM_EASE.OUT, y, _target_y-y, _tar_time);
Anim_Create(id, "image_angle", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, image_angle, _target_angle - image_angle, _tar_time - 10);

image_xscale = 2; image_yscale = 2;

time = 0;
but = noone;