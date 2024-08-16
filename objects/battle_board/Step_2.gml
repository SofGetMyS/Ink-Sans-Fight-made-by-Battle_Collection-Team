if (SoulLimt){
	if (Battle_GetState() == BATTLE_STATE.IN_TURN && instance_exists(battle_soul)){
		with (battle_soul){
			if (moveable){
				if ((other.angle % 360) == 0){
					if (x > ((other.x + other.right) - (sprite_width / 2))){
						x = ((other.x + other.right) - (sprite_width / 2));
					}else if (x < ((other.x - other.left) + (sprite_width / 2))){
						x = ((other.x - other.left) + (sprite_width / 2));
					}else if (y > ((other.y + other.down) - (sprite_height / 2))){
						y = ((other.y + other.down) - (sprite_height / 2));
					}else if (y < ((other.y - other.up) + (sprite_height / 2))){
						y = ((other.y - other.up) + (sprite_height / 2));
					}
				}else{
					var Boarddis = point_distance(other.x, other.y, x, y), Boarddir = point_direction(other.x, other.y, x, y), Boardx = (lengthdir_x(Boarddis, (Boarddir - other.angle)) + other.x), Boardy = (lengthdir_y(Boarddis, (Boarddir - other.angle)) + other.y);
				
					if (Boardy < ((other.y - other.up) + 8)) then Boardy = ((other.y - other.up) + 8);
					if (Boardy > ((other.y + other.down) - 8)) then Boardy = ((other.y + other.down) - 8);
					if (Boardx < ((other.x - other.left) + 8)) then Boardx = ((other.x - other.left) + 8);
					if (Boardx > ((other.x + other.right) - 8)) then Boardx = ((other.x + other.right) - 8);
				
					Boarddis = point_distance(other.x, other.y, Boardx, Boardy); Boarddir = point_direction(other.x, other.y, Boardx, Boardy);
					x = (lengthdir_x(Boarddis, (Boarddir + other.angle)) + other.x); y = (lengthdir_y(Boarddis, (Boarddir + other.angle)) + other.y);
				}
			}
		}
	}
}