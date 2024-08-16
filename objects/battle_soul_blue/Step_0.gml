event_inherited();
if (dir == 270)
    image_angle = 0;
else if (dir == 90)
    image_angle = 180;
else if (dir == 180)
    image_angle = -90;
else if (dir == 0)
    image_angle = 90;
if (Battle_GetState() == (BATTLE_STATE.IN_TURN) && moveable)
{
    var SPD = Player_GetSpdTotal();
    SPD = (Input_IsHeld(INPUT.CANCEL) ? (SPD / 2) : SPD);
    repeat (SPD * 10)
    {
        if (dir == (180 << 0) || dir == 0)
        {
            if Input_IsHeld(INPUT.UP)
            {
                if (!(position_meeting(x, (y - (sprite_height / 2)), block)))
                    y -= 0.1;
            }
            if Input_IsHeld(INPUT.DOWN)
            {
                if (!(position_meeting(x, (y + (sprite_height / 2)), block)))
                    y += 0.1;
            }
        }
        if (dir == 90 || dir == 270)
        {
            if Input_IsHeld(INPUT.LEFT)
            {
                if (!(position_meeting((x - (sprite_width / 2)), y, block)))
                    x -= 0.1;
            }
            if Input_IsHeld(INPUT.RIGHT)
            {
                if (!(position_meeting((x + (sprite_width / 2)), y, block)))
                    x += 0.1;
            }
        }
    }
    var xx = 0;
    var yy = 0;
    if (dir == 270)
        yy = ((sprite_height / 2) + 0.1);
    else if (dir == 90)
        yy = (((-sprite_height) / 2) - 0.1);
    else if (dir == 180)
        xx = (((-sprite_height) / 2) - 0.1);
    else if (dir == 0)
        xx = ((sprite_height / 2) + 0.1);
    var a = position_meeting((x + xx), (y + yy), block);
    var b = position_meeting((x + xx), (y + yy), battle_platform);
    var input = -1;
    if (dir == 270)
        input = INPUT.UP;
    else if (dir == 90)
        input = INPUT.DOWN;
    else if (dir == 180)
        input = INPUT.RIGHT;
    else if (dir == 0)
        input = INPUT.LEFT;
    if ((a || b) && move >= 0)
    {
        var fx = 0;
        var fy = 0;
        if (dir == 270)
            fy = (sprite_height / 2);
        else if (dir == 90)
            fy = ((-sprite_height) / 2);
        else if (dir == 180)
            fx = ((-sprite_height) / 2);
        else if (dir == 0)
            fx = (sprite_height / 2);
        while (position_meeting((x + fx), (y + fy), block) || position_meeting((x + fx), (y + fy), battle_platform))
        {
            var mx = 0;
            var my = 0;
            if (dir == 270)
                my = -0.1;
            else if (dir == 90)
                my = 0.1;
            else if (dir == 180)
                mx = 0.1;
            else if (dir == 0)
                mx = -0.1;
            x += mx;
            y += my;
        }
        var xxx = 0;
        var yyy = 0;
        if (dir == 270)
            yyy = ((sprite_height / 2) + 0.5);
        else if (dir == 90)
            yyy = (((-sprite_height) / 2) - 0.5);
        else if (dir == 180)
            xxx = (((-sprite_height) / 2) - 0.5);
        else if (dir == 0)
            xxx = ((sprite_height / 2) + 0.5);
        if (position_meeting((x + xxx), (y + yyy), block) || position_meeting((x + xxx), (y + yyy), battle_platform))
        {
            move = 0;
            if impact
            {
                impact = 0;
                audio_play_sound(snd_impact, 0, false);
                Camera_Shake(3, 3, 1, 1);
            }
            if position_meeting((x + xx), (y + yy), battle_platform)
            {
                var cx = 0;
                var cy = 0;
                if (dir == 270)
                    cy = ((sprite_height / 2) + 1);
                else if (dir == 90)
                    cy = (((-sprite_height) / 2) - 1);
                else if (dir == 180)
                    cx = (((-sprite_height) / 2) - 1);
                else if (dir == 0)
                    cx = ((sprite_height / 2) + 1);
                inst = instance_position((x + cx), (y + cy), battle_platform);
                if instance_exists(inst)
                {
                    if (inst.sticky == 0)
                        x += (inst.x - inst.xprevious);
                }
            }
            if Input_IsHeld(input)
                move = (-_speed_jump);
        }
    }
    else if (move < 0)
    {
        move += _gravity_jump;
        if (!Input_IsHeld(input))
            move = 0;
        if (move > 0)
            move = 0;
        else if position_meeting((x - xx), (y - yy), block)
            move = 0;
    }
    else if (move < 0.05)
        move += 0.01;
    else if (move < _gravity_fall_max)
        move += _gravity_fall;
    repeat (abs(move) * 10)
    {
        xx = 0;
        yy = 0;
        if (dir == 270)
            yy = ((sprite_height / 2) * sign(move));
        else if (dir == 90)
            yy = ((-((sprite_height / 2))) * sign(move));
        else if (dir == 180)
            xx = ((-((sprite_width / 2))) * sign(move));
        else if (dir == 0)
            xx = ((sprite_width / 2) * sign(move));
        if (!(position_meeting((x + xx), (y + yy), block)))
            var m = (!((move > 0 && position_meeting((x + xx), (y + yy), battle_platform))));
        else
            m = 0;
        if m
        {
            xx = 0;
            yy = 0;
            if (dir == 270)
                yy = (0.1 * sign(move));
            else if (dir == 90)
                yy = (-0.1 * sign(move));
            else if (dir == 180)
                xx = (-0.1 * sign(move));
            else if (dir == 0)
                xx = (0.1 * sign(move));
            x += xx;
            y += yy;
        }
    }

}