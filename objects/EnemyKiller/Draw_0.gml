/// @desc 基础绘制
if (!Action){
draw_sprite_ext(SprKillerLeg, 0, 336, 249, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprKillerBody, 0, 344 + BodyPosX, 174 + BodyPosY, 2, 2, 0, c_white, 1);
draw_sprite_ext(SprKillerHead, 0, 340 + HeadPosX, 147 + HeadPosY, 2, 2, 0, c_white, 1);
//if (global.debug){
//	draw_rectangle(336-sprite_get_width(SprKillerLeg) - sprite_get_xoffset(SprKillerLeg), 249-sprite_get_height(SprKillerLeg) - sprite_get_yoffset(SprKillerLeg), 336+sprite_get_width(SprKillerLeg) - sprite_get_xoffset(SprKillerLeg), 249+sprite_get_height(SprKillerLeg) - sprite_get_yoffset(SprKillerLeg), 0);
//}
}else{
	ActionIndex += 0.3;
	draw_sprite_ext(SprKillerAction, (ActionIndex >= 2 ? 2 : ActionIndex), 336, 249, 2, 2, 0, c_white, 1);
	if (ActionIndex > 6){
		ActionIndex = 0;
		Action = false;
	}
}

draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[0], (x - Body_w) + BodyGlitch_x * 2 + BodyPosX, y - BodyGlitch_y+BodyPosY, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[1], (x - Head_w) + HeadGlitch_x * 2 + HeadPosX, y - Head_h - HeadGlitch_y + HeadPosY, 2, 2, 0, DrawColor, DrawAlpha);
draw_sprite_ext(spr_sanss_glitch, GetGlitchIndex[2], (x - Leg_w) + LegGlitch_x * 2 + 16, y + LegGlitch_y + 4, 2, 2, 0, DrawColor, DrawAlpha);