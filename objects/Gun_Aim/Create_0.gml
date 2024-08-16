/// @desc 
audio_replay_sound(snd_pistol_prepare, 1, 0);
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
depth = load.Depth[|9];

EventYhAction = true;
with (EnemyYH){
	Body_sprite = Spr_YH_BodyFire;
	_wiggle = false;
}