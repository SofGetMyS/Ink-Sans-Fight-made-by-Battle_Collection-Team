/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 2; i++;){
	Line_x[i] = lerp(Line_x[i], GetMove_Pos[i], 0.1);
}
image_alpha -= 0.03;
if (!image_alpha){
	instance_destroy();
}




