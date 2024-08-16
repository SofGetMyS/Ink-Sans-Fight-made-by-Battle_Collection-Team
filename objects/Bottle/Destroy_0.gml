for (var i = 0; i < 4; i++;){
	with (instance_create_depth(x, y, 0, gameover_shard)){
		image_speed = 0;
		sprite_index = SprBottleSlice;
		image_index = i;
	}
}