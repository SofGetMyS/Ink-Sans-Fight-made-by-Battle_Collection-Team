/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 4; i ++){
	Shadow_len[i] = lerp(Shadow_len[i], Target_len[i], increase);
	//Shadow_dir[i] = lerp(Shadow_dir[i], Target_dir[i], increase);
}
image_angle += speed;
if (index == 18){
	Anim_Create(id,"image_angle",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,image_angle,Dir-image_angle+11.3,30);
	direction = Dir;
}
if (index == 19){
	increase = 0.1;
	for (var i = 0; i < 4; i ++){
		Target_len[i] = 60;
		//Target_dir[i] = 80;
	}
	if (FireAble){
		Anim_Create(id,"speed",ANIM_TWEEN.BACK,ANIM_EASE.IN,0,12,50);
		FireAble = false;
	}
	b++;
}else{
	index ++;
}
for (i = 0; i < 4;i ++){
	Shadow_dir[i] -= 4;
}
if (x > 800)
	instance_destroy();
else if (x < -200)
	instance_destroy();
	
if (y > 520)
	instance_destroy();
else if (y < -200)
	instance_destroy();	
	
if (index == 19){
	if (FireAble == false){
		repeat (2){
			a = instance_create_depth(x, y, 0, battle_cir);
			a.image_angle = image_angle;
			a.direction = direction+90;
			a.speed = choose(1, -1);
		}
	}
}