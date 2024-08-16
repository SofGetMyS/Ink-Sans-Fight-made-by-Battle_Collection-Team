/// @description Insert description here
// You can write your code in this editor
if(color == 0){
	blend = c_white;
}
if(color == 1){
	blend = c_aqua;
}
if(color == 2){
	blend = make_color_rgb(248,148,29);
}
if (color == 3){
	blend = c_red;
}
if (color == 4){
	blend = #790599;
}
if(out == 0){
	depth = load.Depth[|4];
	surface_set_target(Battle_GetBoardSurface());{
		DrawBone();
	}surface_reset_target();
}
else if (out == 1){
	depth = load.Depth[|9];
	DrawBone();
}else if (out == 2){
	depth = load.Depth[|4] - 1;
	surface_set_target(Battle_GetBoardSurface());{
		DrawBone();
	}surface_reset_target();
}

//draw_set_color(c_red)
//draw_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle))
//draw_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle))

if (battle_soul._inv <= 0){
	if(collision_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)||collision_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)){
		Battle_CallSoulEventBulletCollision();
	}
}