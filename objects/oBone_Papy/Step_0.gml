/// @description Pattern Management Center
angle += rotate;

if (lenable)
{
    len_dir += len_dir_move;
    len += len_speed;
	len_x += len_hspeed;
	len_y += len_vspeed;
    x = (len_x + lengthdir_x(len, len_dir));
    y = (len_y + lengthdir_y(len, len_dir));
    if (len_angle)
        angle += len_dir_move;
}
