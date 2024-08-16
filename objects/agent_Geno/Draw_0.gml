_wiggle_sin1 += 0.5;
_cloak_y3 = (cos(_wiggle_sin1 * 0.12) * 8);
_cloak_y4 = (cos(_wiggle_sin1 * 0.12) * 12);
_cloak_x = (cos(_wiggle_sin1 * 0.21) * 3.2);

_head_y = (cos(_wiggle_sin1 * 0.09) * 0.6);

var spr_tex = sprite_get_texture(spr_geno_scarf, 0);
draw_primitive_begin_texture(pr_trianglestrip, spr_tex);//23 31
draw_vertex_texture_color((x - 51) - 23, (y - 40) - 31, 0, 0, c_white, 1);
draw_vertex_texture_color((x - 51) + 23, (y - 40) - 31, 1, 0, c_white, 1);
draw_vertex_texture_color((x - 51) - 23 + _cloak_x, (y - 40) + 31 + _cloak_y3, 0, 1, c_white, 0);
draw_vertex_texture_color((x - 51) + 23 + _cloak_x, (y - 40) + 31 + _cloak_y4, 1, 1, c_white, 0);
draw_primitive_end();

draw_sprite_ext(SprGenoHead, 0, x + 3, y - 94 + _head_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprGenoBodyLeg, 0, x + 12, y - 30, 2, 2, 0, c_white, 1);

glitch_rot[0] = (cos(_wiggle_sin1 * 0.1) * 30);
glitch_y[0] = (cos(_wiggle_sin1 * 0.09) * 1);
glitch_x[0] = (cos(_wiggle_sin1 * 0.06) * 1);

glitch_x[1] = (cos(_wiggle_sin1 * 0.1) * 2);
glitch_y[1] = (cos(_wiggle_sin1 * 0.06) * 3);
glitch_rot[1] = (cos(_wiggle_sin1 * 0.05) * 10);

glitch_x[2] = (cos(_wiggle_sin1 * 0.06) * 4);
glitch_y[2] = (cos(_wiggle_sin1 * 0.1) * 5);
glitch_rot[2] = (cos(_wiggle_sin1 * 0.05) * 16);
draw_sprite_ext(SprGenoGlitch, 0, x - 31 + glitch_x[0], y - 25 + glitch_y[0], 2, 2, glitch_rot[0] / 12, c_white, 1);
draw_sprite_ext(SprGenoGlitch, 1, x - 2 - glitch_x[0], y - 6 - glitch_y[0], 2, 2, glitch_rot[0], c_white, 1);
draw_sprite_ext(SprGenoGlitch, 2, x + 22, y - 52, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprGenoGlitch, 3, x + 50 + glitch_x[1], y - 44 + glitch_y[1], 2, 2, glitch_rot[1], c_white, 1);
draw_sprite_ext(SprGenoGlitch, 4, x - 44, y -62, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprGenoGlitch, 5, x - 46, y - 91 + glitch_y[1]/2, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprGenoGlitch, 6, x - 25, y - 132 + _head_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprGenoGlitch, 7, x - 39 + glitch_x[2], y - 149 + glitch_y[2], 2, 2, glitch_rot[2], c_white, 1);