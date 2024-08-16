ShadowScaleWave = (sin(ShadowScaleWiggleSin + 5) * 0.4) + ShadowScaleTarget;
ShadowScale = lerp(ShadowScale, ShadowScaleWave, 0.2);
if (ShootHoldTimer > 10){
	if (CircleAlpha < 0.5){
		CircleAlpha += 0.05;
	}
	if (len > 0){
		len --;
	}
	if (dir > 0){
		dir -= 5;
	}
}
for (var i = 0; i < 4; i ++){
	//show_message("SSS");
	draw_sprite_ext(SpriteSoulYellowCircle, 0, x + lengthdir_x(len, dir + (i * 90)), y + lengthdir_y(len, dir + (i * 90)), 1, 1, 0, c_white, CircleAlpha);
}
if (ShootHoldTimer > 40){
	ShadowScaleWiggleSin +=  0.3;
	ShadowScaleTarget = 2;
}
draw_sprite_ext(sprite_index, 0, x, y, ShadowScale, ShadowScale, image_angle, image_blend, 0.6);
draw_self();