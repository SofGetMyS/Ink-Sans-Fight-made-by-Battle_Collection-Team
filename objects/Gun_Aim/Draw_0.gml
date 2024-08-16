/// @desc 基本绘制
for (var i = 0; i < 4; i ++){draw_sprite_ext(sprite_index, 0, (x + lengthdir_x(Lendraw, (Dirdraw + (i * 90)))), (y + lengthdir_y(Lendraw, (Dirdraw + (i * 90)))), 1, 1, 0, c_white, Alphadraw);}
Lendraw -= LenMove;
Dirdraw -= DirMove;
if (Lendraw <= 0){
	draw_self();
	image_xscale += 0.1;
	image_yscale += 0.1;
	image_alpha -= 0.05;
	Alphadraw = image_alpha;
	if (EventYhAction && instance_exists(EnemyYH)){
		EventYhAction = false;
		with (EnemyYH){
			audio_replay_sound(snd_pistol, 1, 0);
			event_user(0);
		}
		instance_create_depth(0, 0, 0, GunFireEffect);
	}
}else{
	Alphadraw += 0.1;
}
if (!image_alpha) then instance_destroy();

