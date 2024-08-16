switch (EffectMode){
	case EFFECT.LIGHT:
		if (Endable){
			Scale += 0.1;
		}

		var Sur = surface_create(640, 480);
		surface_set_target(Sur);
		var clr = ColorDrawLightDark, SOUL = battle_soul;
		//draw_set_color(clr);
		draw_clear(clr);
		gpu_set_blendmode_ext(bm_zero, bm_inv_src_alpha);
		draw_sprite_ext(SprLight, 0, SOUL.x, SOUL.y, Scale, Scale, 0, c_white, _alpha);
		//draw_surface_ext();
		gpu_set_blendmode(bm_normal);
		surface_reset_target();

		draw_surface(Sur, 0, 0);
		
		///draw_sprite_ext(SprLight, 0, SOUL.x, SOUL.y, Scale, Scale, 0, SOUL.image, _alpha);

		surface_free(Sur);
		break;
	case EFFECT.VAGUE:
		if sureng{
			var surface = surface_create(room_width, room_height);
			surface_set_target(surface);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			draw_set_color(c_black);
		    draw_rectangle(0, 0, 640, 480, false);
			draw_set_color(c_white);
			if (trring_hei_lev > 1) { for (var i = 0; i < 640 / trring_hei_lev; i++) draw_surface_part(surface, 0, i * trring_hei_lev, 640, i * trring_hei_lev, (0 + (lev * random_range(-1, 1))), (0 + i * trring_hei_lev)); } else { 
				for (var i = 0; i < 640; i++) draw_surface_part(surface, 0, i, 640, 1, (0 + (lev * random_range(-1, 1))), (0 + i));
			};
			//left perfer: left to right to cut
			//top perfer: up to down to cut
			surface_free(surface);
		}
		break;
	case EFFECT.RIPPLE_TEARING:
		var _sur = surface_create(room_width, room_height);
		
		surface_set_target(_sur);
		draw_clear_alpha(c_black, 0);
		for (var current_band = 0; current_band < band_num * 2; current_band++) { draw_surface_part(application_surface, 0, band_height * current_band - tearings_y, room_width, band_height, sin( (degtorad(360) / band_num ) * current_band) * tearings_x_offset , band_height * current_band - tearings_y); };
		surface_reset_target();
		
		draw_surface_stretched(_sur, -tearings_x_offset, 0, room_width + tearings_x_offset * 2, room_height);
		
		// 移动撕裂波纹效果
		tearings_y = (tearings_y + tearing_speed) % (band_height * band_num)
		
		surface_free(_sur);
		break;
	case EFFECT.TEARING:
			if sureng{
				var surface = surface_create(room_width, room_height),
					_sur = surface_create(room_width, room_height);
				surface_set_target(surface);
				draw_surface(application_surface, 0, 0);
				surface_reset_target();
				draw_set_color(c_black);
			    draw_rectangle(0, 0, 640, 480, false);
				draw_set_color(c_white);
				
				surface_set_target(_sur);
				if (trring_hei_lev > 1) { for (var i = 0; i < 640 / trring_hei_lev; i++) draw_surface_part(surface, 0, i * trring_hei_lev, 640, i * trring_hei_lev, (0 + (lev * random_range(-1, 1))), (0 + i * trring_hei_lev)); } else { 
					for (var i = 0; i < 640; i++) draw_surface_part(surface, 0, i, 640, 1, (0 + (lev * random_range(-1, 1))), (0 + i));
				};
				surface_reset_target();
				
				for (var i = 0; i < 640 / trring_hei_lev; i++) draw_surface_part(_sur, i * trring_hei_lev, 0, i * trring_hei_lev, 480, i * trring_hei_lev, (lev * random_range(-1, 1)));
				//left perfer: left to right to cut
				//top perfer: up to down to cut
				surface_free(surface);
			}
		break;
}