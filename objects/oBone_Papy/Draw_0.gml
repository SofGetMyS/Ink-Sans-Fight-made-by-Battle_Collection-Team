/// @description Color Drawing And load.Depth
if (color == 0)
    blend = c_white;
if (color == 1)
    blend = make_color_rgb(20, 196, 255);
if (color == 2)
    blend = make_color_rgb(248, 148, 29);
if (out == 0)
{
    depth = load.Depth[|4];
    surface_set_target(Battle_GetBoardSurface());
    draw_sprite_ext(SprBoneBodyPapy, 0, x, y, (length / 2), 1, angle, blend, alpha);
	draw_sprite_ext(SprBoneEndPapy, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha);
	draw_sprite_ext(SprBoneEndPapy, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha);
    
    surface_reset_target();
}
else
{
    depth = load.Depth[|9];
    draw_sprite_ext(SprBoneBodyPapy, 0, x, y, (length / 2), 1, angle, blend, alpha);
	draw_sprite_ext(SprBoneEndPapy, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha);
	draw_sprite_ext(SprBoneEndPapy, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha);
}
if (collision_line(((x + lengthdir_x(2, (angle + 90))) + lengthdir_x((length / 2), angle)), ((y + lengthdir_y(2, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x + lengthdir_x(2, (angle + 90))) - lengthdir_x((length / 2), angle)), ((y + lengthdir_y(2, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false) || collision_line(((x - lengthdir_x(1, (angle + 90))) + lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x - lengthdir_x(1, (angle + 90))) - lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false))
    event_user(0);