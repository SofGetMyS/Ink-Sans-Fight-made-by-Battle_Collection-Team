/// @desc 
depth = load.Depth[|4];
if (instance_exists(EnemyYH) && FireIndex <= 4){
	FireIndex += 0.3;
	draw_sprite_ext(Spr_YH_FireEffect, FireIndex, (EnemyYH.x - 35), (EnemyYH.y - 129), 2, 2, 0, c_white, 1);
}else{
	instance_destroy();
}
