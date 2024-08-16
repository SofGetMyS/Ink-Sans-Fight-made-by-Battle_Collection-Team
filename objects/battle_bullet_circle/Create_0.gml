/// @description Insert description here
// You can write your code in this editor
depth=load.Depth[|9];

Dir = point_direction(x,y,battle_soul.x,battle_soul.y);

image_angle = 90;
image_speed = 0;
//alarm[2] = 1;
image_alpha = 0;
image_xscale = 1;
image_yscale = 1;
Anim_Create(id,"image_alpha",0,0,0,1,10);
angle = 0;
audio_stop_sound(snd_circle_ready);
audio_play_sound(snd_circle_ready, 1, 0);
b = 0;
index = 0;

FireAble = true;
var ang = random(360);
for (var i = 0; i < 4; i++;){
	Shadow_dir[i] = ang;
	ang += 90;
	
	Shadow_len[i] = 0;
	Target_len[i] = 0;
}
increase = 0;