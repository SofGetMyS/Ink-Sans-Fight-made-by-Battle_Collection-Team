switch (global.debug){
	case true:
		//Player_Heal(Player_GetHpMax());
		draw_set_alpha(1);
		//if (instance_exists(Boutlist[|0]))
			//draw_text_color(162, 32, string(Boutlist[|0].time), c_white, c_white, c_white, c_white, 1);
		draw_set_font(font_comic_sans);
		draw_text_color(82, 32, "No HIT", c_yellow, c_yellow, c_blue, c_red, 1);
		draw_set_halign(fa_center);
		if (global.GameTest){
			draw_text_color(320, 10, "Debugger Mode", c_yellow, c_yellow, c_blue, c_red, 1);
			draw_set_halign(fa_left);
			if (instance_exists(EnemyControlCenter)){ with (EnemyControlCenter) draw_text_color(142, 32, string(bout) + "    " + (!instance_exists(Boutlist[|0]) ? "N/A" : string(Boutlist[|0].time)), c_orange, c_yellow, c_black, c_black, 1); };
			draw_set_halign(fa_right);
			for (var i = 0; i < 8; i ++) draw_text_color(640, (i * 20), $"global.x_attack{string(i)} = {string(global.x_attack[i])}", c_orange, c_yellow, c_blue, c_orange, 1);
			draw_set_halign(fa_left);
			draw_text_color(10, 100, "InstC: " + string(instance_count), c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 120, "Room: " + string(room) + "(" + room_get_name(room) + ")", c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 140, "FPSmin: " + string(FPSMIN), c_yellow, c_yellow, c_blue, c_red, 1);
			//draw_text_color(10, 140, "FPS(Min_Debugger): " + string("{0}/{1}", FPSMIN, (min((game_get_speed(gamespeed_fps)), fps_real))), c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 160, $"FPS: {fps}", c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 180, $"FPSReal: {fps_real}", c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 200, "MousePosX: " + string(mouse_x), c_yellow, c_yellow, c_blue, c_red, 1);
			draw_text_color(10, 220, "MousePosY: " + string(mouse_y), c_yellow, c_yellow, c_blue, c_red, 1);
			if (keyboard_check_pressed(ord("5"))) then Battle_EndTurn();
			if (keyboard_check_pressed(ord("0"))) then bout++;
			if (keyboard_check_pressed(ord("9"))) then bout--;
			if (keyboard_check_pressed(ord("H"))) then room_speed = 120;
			if (keyboard_check_pressed(ord("B"))) then room_speed = 180;
			if (keyboard_check_pressed(ord("J"))) then room_speed = 40;
			if (keyboard_check_pressed(ord("U"))) then room_speed = 60;
			if ((instance_exists(Bottle))&& keyboard_check_pressed(ord("P"))) then Bottle.hp = 1;
		}
		break;
};
draw_set_halign(fa_left);