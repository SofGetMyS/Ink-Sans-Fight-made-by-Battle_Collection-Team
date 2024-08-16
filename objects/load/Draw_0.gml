var _recoveryFnt = draw_get_font(),
	_recoveryCol = draw_get_color(),
	_recoveryAlp = draw_get_alpha();

draw_sprite_ext(SprCover, 0, room_width/2, room_height/2, LoadBGScale, LoadBGScale, 0, c_white, LoadBGAlpha);
draw_set_font(font_load); draw_text_transformed_color(6, 422, $"Loading{(LoadState != "Undefined" ? LoadState : undefined)??("")}...", 1, 1, 0, c_white, c_white, c_white, c_white, LoadFontAlpha);

if (DrawableTeamLogo) { 
	draw_set_alpha(1);
	var surF = surface_create(640, 480);
	surface_set_target(surF);
		draw_sprite_ext(SprBattle_Collection,3,320,250,2,2,0,c_white,1);
		draw_set_color(c_black);
		if (surRectangleYsc != 0) then draw_rectangle(0, 250 + surRectangleYsc, 640, 250 - surRectangleYsc, false);
		draw_set_color(c_white);
	surface_reset_target();

	draw_surface(surF, 0, 0);
	
	surface_free(surF);
	
	draw_sprite_ext(SprBattle_Collection,0,320,250,LoadLogo_xscale0,2,0,c_white,1); 
	draw_sprite_ext(SprBattle_Collection,1,320,250,LoadLogo_xscale1,2,0,c_white,1); 
	draw_sprite_ext(SprBattle_Collection,2,320,250,LoadLogo_xscale2,2,0,c_white,1); 
};
