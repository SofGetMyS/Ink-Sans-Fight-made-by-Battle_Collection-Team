/// @description Insert description here
// You can write your code in this editor
angle += rotate;
length = abs(length);
if lenable
{
    len_dir += len_dir_move;
    len += len_speed;
    x = (len_x + lengthdir_x(len, len_dir));
    y = (len_y + lengthdir_y(len, len_dir));
    if len_angle
        angle += len_dir_move;
	len_x += len_hspeed;
	len_y += len_vspeed;
}
image_blend = blend;

if length_moveable
{
    if (length_move_delay > 0)
        length_move_delay--;
    else
    {
        if (lt == length_move_time)
        {
            lt = 0;
            length_move_len *= -1;
        }
        length += (length_move_len / length_move_time);
        if (length_move_dir == 0)
            x -= ((length_move_len / length_move_time) / 2);
        else if (length_move_dir == 90)
            y += ((length_move_len / length_move_time) / 2);
        if (length_move_dir == 180)
            x += ((length_move_len / length_move_time) / 2);
        else if (length_move_dir == 270)
            y -= ((length_move_len / length_move_time) / 2);
        lt++;
    }
}
if (mode == 1)
{
    a++;
    length -= (sin((a / delay)) * 2);
    y -= sin((a / delay));
}
if (mode == 2)
{
    a++;
    length -= (sin((a / delay)) * 2);
    y += sin((a / delay));
}
if (mode == 3)
{
    a ++;
    length -= (sin((a / 9)) * 8.5);
}
