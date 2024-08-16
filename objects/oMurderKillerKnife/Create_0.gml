depth=load.Depth[|9];
audio_play_sound(snd_slice,0,false);

if (instance_exists(EnemyKiller)){
	with (EnemyKiller){
		Action = true;
		ActionIndex = 0;
	}
}