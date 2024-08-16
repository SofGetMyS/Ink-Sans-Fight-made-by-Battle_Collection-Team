/// @description Insert description here
// You can write your code in this editor
a = 0;
mode = 0;
length = 20;
angle = 0;
color = 0;
blend = c_white;
auto_destroy = 0;
out = 0;
rotate = 0;
length_move_dir = -1;
length_move_delay = -1;
length_moveable = 0;
length_move_time = 0;
length_move_len = 0;
len = 0;
len_x = 0
len_y = 0;
lenable = 0;
len_angle = 0;
len_dir = 0;
len_speed = 0;
len_hspeed = 0;
len_vspeed = 0;
len_dir_move = 0;
lt = 0;
delay = 0;
vspeed = 0;
hspeed = 0;
duration = -1;
alarm[0] = 1;
model = -1;

Head_sprite = spr_bone_head;
Body_sprite = spr_bone_body;
Bottom_sprite = spr_bone_bottom;

bottom = 1;

function ScrWallMode(){
	enum WALL_MODE{
		LEFT,
		RIGHT,
		UP,
		DOWN
	}
}

function DrawBone(){
	draw_sprite_ext(Body_sprite,0,x,y,length/2,1,angle,blend,1);
	if(bottom = 1){
		draw_sprite_ext(Head_sprite,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		draw_sprite_ext(Head_sprite,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
	}
	if(bottom = 0){
		draw_sprite_ext(Head_sprite,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		draw_sprite_ext(Bottom_sprite,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
	}
	if(bottom = 2){
		draw_sprite_ext(Bottom_sprite,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		draw_sprite_ext(Head_sprite,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
	}
}

Tation = 0;