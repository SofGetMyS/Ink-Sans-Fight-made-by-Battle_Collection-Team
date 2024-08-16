image_xscale = (width / 2)+4;
sprite_index = (sticky ? spr_battle_platform_green : spr_battle_platform_purple);
if angleable
{
	image_angle += angle;
}
else
{
	image_angle = angle;
}
if (! bounce_x){
    x = (x + move_x);
}else{
	var MoveX = (abs(move_x) * 10);
	var MoveX1 = MoveX;
	if (MoveX <= 0)
	{
	}
	else
	{
		while (true)
		{
			var LEN_X = lengthdir_x((image_xscale + 0.1), image_angle);
			var LEN_Y = lengthdir_y((image_xscale + 0.1), image_angle);
			if (!(position_meeting((x + (sign((move_x + move_y)) * LEN_X)), (y + (sign((move_x + move_y)) * LEN_Y)), block)))
			{
				x += (sign(move_x) * 0.1);
				MoveX1 = (MoveX1 - 1);
                if MoveX1
			        continue;
			    else
			        break;
			}
            else
            {
                move_x = (- move_x);
                break;
            }
			break;
		}
	}
}
y = (y + move_y);
if (Battle_GetState() != BATTLE_STATE.IN_TURN)
	instance_destroy();
