_wiggle_sin += 0.3;

_cloak_y1 = (cos(_wiggle_sin * 0.03) * 2);
_cloak_y2 = (cos(_wiggle_sin * 0.04) * 4);
var _wiggle = (sin(_wiggle_sin / 16));
draw_sprite_ext(SprLorisLeg, 0, x, (y - 65), 2, 2, 0, c_white, 1);
//29 23
draw_sprite_pos(SprLorisCloak, 0,
x - 53 - 29,
y - 56 - 23 + _wiggle,
x - 53 + 29,
y - 56 - 23 + _wiggle,
x - 53 + 29,
y - 56 + 23 + _cloak_y1 + _wiggle,
x - 53 - 29,
y - 56 + 23 + _cloak_y2 + _wiggle,
1);
draw_sprite_ext(SprLorisBody, BodyImage, x, ((y - 75) + _wiggle), 2, 2, 0, c_white, 1);
draw_sprite_ext(SprLorisHead, HeadImage, x, ((y - 105) + _wiggle), 2, 2, 0, c_white, 1);
