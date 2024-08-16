draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_set_alpha(alpha);
switch(DrawUIMode){
	case UI_DRAWMODE.NORMAL:
		draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
		draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

		draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),alpha);
		draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),alpha);

		draw_text(x+245+Player_GetHpMax()*1.25+14,y,((Player_GetHp() < 10) ? "0" + string(Player_GetHp()) : string(Player_GetHp()))+" / "+string(Player_GetHpMax()));
		draw_set_alpha(1);
		break;
		
	case UI_DRAWMODE.NEXTERATALE:
		draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));

		draw_rectangle(x + 139, y + 2, x + 151, y + 16, 0);
		draw_rectangle(x + 157, y + 2, x + 169, y + 16, 0);

		draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

		draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),alpha);
		draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),alpha);
		
		draw_sprite_ext(SprNexteraTaleUIHP, 0, x+243, y-8, 1, 1, 0, c_white, alpha);
		draw_text(x+245+Player_GetHpMax()*1.25+14,y,((Player_GetHp() < 10) ? "0" + string(Player_GetHp()) : string(Player_GetHp()))+" / "+string(Player_GetHpMax()));
		draw_set_alpha(1);
		break;
}