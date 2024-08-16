/// @description Insert description here
// You can write your code in this editor
surface_set_target(Battle_GetBoardSurface());
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_determination_mono);
var col = c_white;
draw_text_transformed_color(320, (400 - Y), ItemTextChoice[GetChoose], 2, 2, 0, col, col, col, col, 1);
col = c_gray;
draw_set_valign(fa_top);
draw_text_transformed_color(320, (220 + Y), Iteminterpretation[GetChoose], 2, 2, 0, col, col, col, col, 1);
draw_set_halign(fa_left);
surface_reset_target();






