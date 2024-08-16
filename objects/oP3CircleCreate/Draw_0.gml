draw_set_alpha(alpha);
draw_set_color(color);
draw_circle(x, y, radius, false);
radius += radiusAdd;
time ++;

if (time >= EndTime){
	alpha -= 0.05;
}
if (!alpha){
	instance_destroy();
}