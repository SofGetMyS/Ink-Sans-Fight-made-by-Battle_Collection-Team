function ScrP1Bout0(){
	if (time == 10){
		instance_create_depth(320, 180, 0, oSansInto);
	}
	if (time == 30){
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, agent_Sans);
		
	}
	if (time >= 30 && time <= 50 && (time % 10) == 0){
		but = Bone_Create_Top(ScrGetboard_left(), 40, 90, 0, 0, 0, 12, 0, 1);
		Anim_Create(but, "hspeed", 0, 0, 12, choose(-24, 0), 30, 20);
		Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 40, 20, 30, 30);
		Bone_Create_Top(ScrGetboard_right(), 40, 90, 0, 0, 0, -12, 0, 1);
		
		Bone_Create_Bottom(ScrGetboard_left(), 40, 90, 0, 0, 0, 12, 0, 1);
		but = Bone_Create_Bottom(ScrGetboard_right(), 40, 90, 0, 0, 0, -12, 0, 1);
		Anim_Create(but, "hspeed", 0, 0, -12, choose(24, 0), 30, 20);
		Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 40, 20, 30, 30);
		
		but = Bone_Create_Top(320, 0, 90, 0, 1, 2, 0, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 260, 40);
		Anim_Create(but, "hspeed", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 12, 60);
		but = Bone_Create_Bottom(320, 0, 90, 0, 1, 2, 0, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 260, 40);
		Anim_Create(but, "hspeed", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, -12, 60);
	}
	if (time >= 70 && time <= 650 && (time % 30) == 0){
		but = Bone_Create(0, 320, 120, 90, 0, 2, 0, 7, 0, 1);
		but.mode = -1;
		but = Bone_Create(640, 320, 120, 90, 0, 2, 0, -5, 0, 1);
		but.mode = -1;
	}
	
	if (time == 50){
		var ll = 0;
		repeat (5){
			ScrGBCreate(80 + (ll * 120), -40, 80 + (ll * 120), 140, 0, 0, 2, 2, 30, 10, 20, 0, newSansGB);
			ll++;
		}
	}
	if (time == 90){
		ScrGBCreate(-40, ScrGetboard_up(), 40, ScrGetboard_up(), 0, 90, 2, 2, 25, 10, 20, 0);
		ScrGBCreate(680, ScrGetboard_down(), 600, ScrGetboard_down(), 0, -90, 2, 2, 25, 10, 20, 0);
	}
	if (time == 120){
		ScrGBCreate(-40, 320, 40, 320, 0, 90, 1, 2, 25, 10, 20, 0);
		ScrGBCreate(680, 320, 600, 320, 0, -90, 1, 2, 25, 10, 20, 0);
	}
	if (time >= 130 && time <= 260 && (time % 10) == 1){
		ScrGBCreate(315 - (xxx * 20), -40, 315 - (xxx * 20), 120, -90, 0, 1, 2, 25, 0, 20, 0, newSansGB);
		ScrGBCreate(325 + (xxx * 20), -40, 315 + (xxx * 20), 120, 90, 0, 1, 2, 25, 0, 20, 0, newSansGB);
		xxx++;
	}
	if (time == 210){
		ScrGBCreate(-40, ScrGetboard_up(), 40, ScrGetboard_up(), 0, 90, 2, 2, 25, 10, 20, 0);
		ScrGBCreate(680, ScrGetboard_down(), 600, ScrGetboard_down(), 0, -90, 2, 2, 25, 10, 20, 0);
	}
	if (time == 270){
		xxx = 0;
	}
	if (time >= 290 && time <= 430 && (time % 10) == 1){
		ScrGBCreate(20 + (xxx * 20), -40, 20 + (xxx * 20), 120, -90, 0, 1, 2, 25, 0, 20, 0, newSansGB);
		ScrGBCreate(620 - (xxx * 20), -40, 620 - (xxx * 20), 120, 90, 0, 1, 2, 25, 0, 20, 0, newSansGB);
		xxx ++;
	}
	if (time == 360){
		ScrGBCreate(-40, 320, 40, 320, 0, 90, 1, 2, 25, 10, 20, 0);
		ScrGBCreate(680, 320, 600, 320, 0, -90, 1, 2, 25, 10, 20, 0);
		ScrGBCreate(-40, ScrGetboard_up(), 40, ScrGetboard_up(), 0, 90, 1, 2, 25, 10, 20, 0);
		ScrGBCreate(680, ScrGetboard_down(), 600, ScrGetboard_down(), 0, -90, 1, 2, 25, 10, 20, 0);
	}
	if (time == 410){
		but = instance_create_depth(-30, 320, 0, oSansinitStarAttack);
		but.hspeed = 7;
		but.rotate = -4;
		but = instance_create_depth(670, 320, 0, oSansinitStarAttack);
		but.hspeed = -7;
		but.rotate = 4;
	}
	if (time == 500){
		for (var i = 0; i < 4; i++){
			but = Bone_Create(ScrGetboard_left() + 40, ScrGetboard_up() - 10, 0, 90, 0, 1, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 110, 40, (i * 8));
			Anim_Create(but, "hspeed", 0, 0, 0, 7, 20, (i * 8));
			but = Bone_Create(ScrGetboard_left() + 40, ScrGetboard_down() + 10, 0, 90, 0, 1, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 110, 40, (i * 8));
			Anim_Create(but, "hspeed", 0, 0, 0, 7, 20, (i * 8));
			
			but = Bone_Create(ScrGetboard_right() - 40, ScrGetboard_up() - 10, 0, 90, 0, 1, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 110, 40, (i * 8));
			Anim_Create(but, "hspeed", 0, 0, 0, -7, 20, (i * 8));
			but = Bone_Create(ScrGetboard_right() - 40, ScrGetboard_down() + 10, 0, 90, 0, 1, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 110, 40, (i * 8));
			Anim_Create(but, "hspeed", 0, 0, 0, -7, 20, (i * 8));
		}
	}
	if (time >= 600){
		with (SansBone){
			if (mode == -1){
				gravity = 0.15;
			}
		}
	}
	if (time == 660){
		var ll = 0;
		repeat (5){
			ScrGBCreate(80 + (ll * 120), -40, 80 + (ll * 120), 140, 0, 0, 2, 2, 30, 10, 20, 0, newSansGB);
			ll++;
		}
		ScrGBCreate(-40, ScrGetboard_up(), 40, ScrGetboard_up(), 0, 90, 2, 2, 25, 10, 20, 0);
		ScrGBCreate(680, ScrGetboard_down(), 600, ScrGetboard_down(), 0, -90, 2, 2, 25, 10, 20, 0);
	}
	if (time == 680){
		instance_create_depth(320, 180, 0, oSansInto);
	}
	if (time == 700){
		instance_destroy(agent_Sans);
	}
	if (time == 780){
		Battle_EndTurn();
	}
}
function ScrP1Bout1(){
	if (time == 1){
		but = instance_create_depth(320, 160, 0, oSansInto);
		but.mode = 1;
		audio_play_sound(SndAppear_0, 1, 0);
	}
	if (time == 40){
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y() - 10, 0, agent_Fell);
		but = Bone_Create(320, 230, 100, 0, 4, 3, 0, 0, 0, 1);
		but.mode = -1;
		but = Bone_Create(320, 230, 100, 0, -4, 3, 0, 0, 0, 1);
		but.mode = -2;
		
		but = Bone_Create(230, 320, 100, 0, 4, 3, 0, 0, 0, 1);
		but.mode = -1;
		but = Bone_Create(230, 320, 100, 0, -4, 3, 0, 0, 0, 1);
		but.mode = -2;
		
		but = Bone_Create(410, 320, 100, 0, 4, 3, 0, 0, 0, 1);
		but.mode = -1;
		but = Bone_Create(410, 320, 100, 0, -4, 3, 0, 0, 0, 1);
		but.mode = -2;
		
		but = Bone_Create(320, 410, 100, 0, 4, 3, 0, 0, 0, 1);
		but.mode = -1;
		but = Bone_Create(320, 410, 100, 0, -4, 3, 0, 0, 0, 1);
		but.mode = -2;
		var ll = 0;
		repeat (2){
			but[ll] = Bone_Create(320, 320, 0, 0, 0, 2, 0, 0, 0, 1);
			Anim_Create(but[ll], "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 120, 30);
			ll++;
		}
		Anim_Create(but[0], "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 90, 30);
		Anim_Create(but[1], "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 180, 30);
	}
	if (time >= 100 && time <= 610 && (time % 7) == 1){
		var dirrr = (dirr + 90);
		ScrGBCreate((320 + lengthdir_x(400, dirr)), (320 + lengthdir_y(400, dirr)), (320 + lengthdir_x(120, dirr)), (320 + lengthdir_y(120, dirr)), (dirr + 90), (dirr + 270), 0.5, 2, 15, 0, 10, 0, spr_fell_gb);
		ScrGBCreate((320 + lengthdir_x(400, dirrr)), (320 + lengthdir_y(400, dirrr)), (320 + lengthdir_x(120, dirrr)), (320 + lengthdir_y(120, dirrr)), (dirrr + 90), (dirrr + 270), 0.5, 2, 15, 0, 10, 0, spr_fell_gb);
		dirr += 14;
	}
	if (time == 300){
		var COLOR = choose(1, 2);
		but = Bone_Create(140, 480, 120, 0, 0, COLOR, 1, 0, 0, 0);
		Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 480, 320-480, 40);
		Anim_Create(but, "angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 115, 40);
		Anim_Create(but, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 115, -25, 20, 40);
		Anim_Create(but, "hspeed", ANIM_TWEEN.BACK, ANIM_EASE.IN, 0, 12, 40, 40);
		but = Bone_Create(500, 480, 120, 0, 0, COLOR, 1, 0, 0, 0);
		Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 480, 320-480, 40);
		Anim_Create(but, "angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, -115, 40);
		Anim_Create(but, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, -115, 25, 20, 40);
		Anim_Create(but, "hspeed", ANIM_TWEEN.BACK, ANIM_EASE.IN, 0, -12, 40, 40);
	}
	if (time == 480){
		Bone_Create_Bottom(320, 120, 0, 0, 1, 0, 0, -6, 1);
		Bone_Create_Top(320, 120, 0, 0, 1, 0, 0, 6, 1);
	}
	if (time == 620){
		audio_play_sound(snd_ding, 1, 0);
		with (SansBone){
			if (mode == -1){
				rotate = 8;
				color = 1;
				Anim_Create(id, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, length, 30, 20);
				Anim_Create(id, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, (length + 60), -(length + 60), 40, 20);
			}
			if (mode == -2){
				rotate = -8;
				color = 1;
				Anim_Create(id, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, length, 30, 20);
				Anim_Create(id, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, (length + 60), -(length + 60), 40, 20);
			}
		}
	}
	if (time == 660){
		but = instance_create_depth(320, 160, 0, oSansInto);
		but.mode = 1;
	}
	if (time == 700){
		instance_destroy(EnemySans);
	}
	if (time == 800){
		Battle_EndTurn();
	}
}
function ScrP1Bout2(){
	xsin = (cos(time * 0.2) * 20);
	StarMoveSiner = (cos(time * 0.02) * 180);
	if (time == 1){
		Anim_Create(EnemyControlCenter, "_alpha", 0, 0, 1, -1, 30);
		repeat (3)
			audio_play_sound(SndDisappear, 100, 0);
		Anim_Create(battle_button, "image_alpha", 0, 0, 1, -1, 30);
		
	}
	if (time == 30){
		EnemyControlCenter.OuterPart = true;
		Anim_Create(battle_ui, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, battle_ui.y, 50, 30);
		Anim_Create(battle_ui, "alpha", 0, 0, 1, -0.5, 30);
		with (battle_board){
			Anim_Create(id, "alpha_bg", 0, 0, 1, -0.5, 30);
			Anim_Create(id, "alpha_frame", 0, 0, 1, -0.5, 30);
		}
		instance_create_depth(0, 0, 0, Effect);
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y()-20, 0, agent_Outer);
		Anim_Create(but, "DrawAlpha", 0, 0, 0, 1, 20);
		battle_soul.Outer_draw_glow = true;
		battle_soul.alarm[0] = 1;
		ScrGBCreate(0, 0, 120, 320, 0, 90, 2, 2, 30, 30, 30, 0, newSprOuterGB);
	}
	if (time == 95){
		audio_play_sound(SndStormStarCr, 1, 0);
		StarNum = ds_list_create();
		Anim_Create(battle_board, "Angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 7, -7, 180);
		for (var i = 0; i < 4; i++;){
			StarNum[|i] = instance_create_depth(320, 320, 0, StormStar);
			with (StarNum[|i]){
				image_xscale = 0.5;
				image_yscale = 0.5;
				Lenable = true;
				Len = 0;
				LenPosX = 320;
				LenPosY = 320;
				LenDir += (i * 90);
				LenDirMove = 4;
				rotate = -4;
				FadeIn = true;
				image_alpha = 0;

			}
		}
		for (var i = 4; i < 9; i++;){
			StarNum[|i] = instance_create_depth(320, 320, 0, StormStar);
			with (StarNum[|i]){
				image_xscale = 0.5;
				image_yscale = 0.5;
				Lenable = true;
				Len = 0;
				LenPosX = 320;
				LenPosY = 320;
				LenDir += 45 + (i * 90);
				LenDirMove = -4;
				rotate = 4;
				FadeIn = true;
				image_alpha = 0;
			}
		}
	}
	if (time > 95 && time <= 550){
		for (var i = 0; i < (ds_list_size(StarNum)); i++;){
			StarNum[|i].Len = StarMoveSiner;
		}
	}
	if (time == 550){
		var POSlock = point_direction(120, 120, 320, 320);
		ScrGBCreate(120, 520, 120, 120, 360, 360 - POSlock, 2, 2, 25, 25, 30, 0, newSprOuterGB);
		var POSlock = point_direction(120, 520, 320, 320);
		ScrGBCreate(520, 520, 520, 120, -360, -360 - POSlock, 2, 2, 25, 25, 30, 0, newSprOuterGB);
	}
	if (time == 610){
		audio_play_sound(SndSparkle, 1, 0, 2);
		for (var i = 0; i < (ds_list_size(StarNum)); i++;){
			with (StarNum[|i]){
				Lenable = false;
				gravity = 0.15;
				hspeed = random_range(-4, 4);
				Anim_Create(id, "vspeed", 0, 0, irandom_range(-3,-7), 12, 60);
			}
		}
	}
	if (time >= 120 && (time % 40) == 0 && time <= 600){
		audio_play_sound(SndSaber, 2, 0);
		but = instance_create_depth(random_range(60, 180), 520, 0, StormStar);
		but.vspeed = -7;
		but.rotate = -7;
		but.mode = 1;
		but = instance_create_depth(random_range(440, 580), 520, 0, StormStar);
		but.vspeed = -7;
		but.rotate = 7;
		but.mode = 2;
	}
	if (time >= 40 && (time % 5) == 0 && time <= 1000){
		//but = instance_create_depth(140-xsin, 640, 0, StormStar);
		//but.GpuBlendMode = true;
		//but.vspeed = -6;
		//but.rotate = -6;
		with (EnemyControlCenter){
			part_type_orientation(Part_T, 0, 0, -6, 0, 0);
			part_particles_create(Part_S, 140-other.xsin, 640, Part_T, 1);
			part_type_orientation(Part_T, 0, 0, 6, 0, 0);
			part_particles_create(Part_S, 500+other.xsin, 640, Part_T, 1);
		}
		//but = instance_create_depth(500+xsin, 640, 0, StormStar);
		//but.GpuBlendMode = true;
		//but.vspeed = -6;
		//but.rotate = 6;
	}
	if (time == 350){
		sb(80, 80, 80, 80, 25);
		Anim_Create(battle_board, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, battle_board.angle, -battle_board.angle, 100);
	}
	if (time == 800){
		Anim_Create(battle_ui, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, battle_ui.y, -50, 30);
		Anim_Create(battle_ui, "alpha", 0, 0, 0.5, 0.5, 30);
		Anim_Create(battle_board, "alpha_bg", 0, 0, 0.5, 1, 30);
		Anim_Create(battle_board, "Angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 7, 30);
		sb(600, 600, 600, 600, 200);
	}
	if (time == 1000){
		with (Bout){
			part_type_shape(Star_Effect_Part_Type, pt_shape_star);
			part_type_alpha1(Star_Effect_Part_Type, 0.6);
			part_type_scale(Star_Effect_Part_Type, 0.3, 0.3);
			part_type_color1(Star_Effect_Part_Type, #790599);
		}
		Anim_Create(Effect, "_alpha", 0, 0, 1, -1, 30);
		EnemyControlCenter.OuterPart = false;
		
		battle_button.image_alpha = 1;
	}
	
	if (time == 1029){
		instance_destroy(battle_bullet);
		ScrSetButtonSprite(SprButtonAct_Fs, SprButtonFight_Fs, SprButtonItem_Fs, SprButtonItemEmpty_Fs, SprButtonMercy_Fs);
		sb(65, 65, 65, 65, 100);
		with (EnemyControlCenter){
			part_system_clear(Part_S);
			part_type_clear(Part_T);
		}
		fader.color = c_black;
		Fader_Fade(1, 0, 30);
		instance_destroy(agent_Outer);
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y()-20, 0, agent_FS);
		with (battle_board){
			angle = 0;
			color_frame = #790599;
			alpha_frame = 1;
		}
		Anim_Create(battle_board, "Angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 7, -7, 200);
	}
	if (time == 1030){
		with (Effect){
			Anim_Destroy(id);
			Anim_Create(id, "_alpha", 0, 0, 0, 1, 30);
			ColorDrawLightDark = #0F0033;
		}
	}
	if (time >= 1130 && (time % 40) == 0 && time <= 1430){
		audio_replay_sound(Sndbone, 1, 0);
		var ANGLE = choose(85, 95);
		var ANGLEOTHER = 0;
		switch (ANGLE){
			case 85:
				ANGLEOTHER = 95;
				break;
			case 95:
				ANGLEOTHER = 85;
				break;
		}
		Bone_Create_Bottom(ScrGetboard_right() + 20, 120, ANGLE, 0, 4, 0, -1, 0, 1);
		Bone_Create_Top(ScrGetboard_left() - 20, 120, ANGLEOTHER, 0, 4, 0, 1, 0, 1);
		//instance_create_depth();
	}
	if (time == 1350){
		ds_list_clear(StarNum);
		for (var i = 0; i < 4; i++;){
			but = instance_create_depth(320, 320, 0, StormStar);
			with (but){
				image_xscale = 0.5;
				image_yscale = 0.5;
				Lenable = true;
				Len = 0;
				LenPosX = 320;
				LenPosY = 320;
				LenDir += (i * 90);
				LenDirMove = 4;
				rotate = -4;
				FadeIn = true;
				image_alpha = 0;
				Anim_Create(id, "Len", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 20, 60, 20);
				Anim_Create(id, "Len", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 20, 160, 60, 120);
				Anim_Create(id, "Len", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 180, -180, 80, 180);
			}
		}
		for (var i = 0; i < 7; i++;){
			but = instance_create_depth(320, 320, 0, StormStar);
			with (but){
				image_xscale = 0.5;
				image_yscale = 0.5;
				Lenable = true;
				Len = 600;
				LenPosX = 320;
				LenPosY = 320;
				LenDir += (i * 60);
				LenDirMove = -4;
				rotate = 4;
				FadeIn = true;
				image_alpha = 0;
				LenMove = -5;
			}
		}
	}
	if (time == 1250){
		Anim_Create(battle_board, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, battle_board.angle, -battle_board.angle, 100);
	}
	if (time == 1500) { battle_soul.Outer_draw_glow = false; battle_soul.alarm[0] = 1; Anim_Create(Effect, "_alpha", 0, 0, 1, -1, 100); };
	if (time == 1600){
		instance_destroy(StormStar);
		instance_destroy(Effect);
		fader.color = c_white;
		Fader_Fade(1, 0, 30);
		audio_play_sound(SndCreate, 1, 0);
		instance_destroy(agent_FS);
		EnemyControlCenter._alpha = 1;
		EnemyControlCenter.x = 320;
		battle_board.color_frame = c_white;
		ScrSetButtonSprite(SprButtonAct, SprButtonFight, SprButtonItem, SprButtonItemEmpty, SprButtonMercy);
		Player_SetName("FRISK");
		
		ScrEnemyDialog(420, 120, 0, global.Text_Enemy[5, 2]);
	}
	if (time >= 1650 && (!instance_exists(battle_dialog_enemy))){
		Battle_EndTurn();
	}
}
function ScrP1Bout3(){
	if (time == 1){
		/*but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y()+40, 0, EnemyNothingSans);
		Anim_Create(EnemyControlCenter, "_alpha", 0, 0, 1, -1, 30);123456789
		Anim_Create(but, "DrawAlpha", 0, 0, 0, 1, 10, 30);*/
		but = instance_create_depth(320, 160, 0, oSansInto);
		but.mode = 4;
		audio_play_sound(Sndbone, 1, 0);
		Anim_Create(EnemyControlCenter, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 320, 200, 50);
	}
	if (time == 20){
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y()+40, 0, agent_Geno);
	}
	if (time == 80){
		for (var i = 0; i < 19; i ++){
			but = Bone_Create(320 - (i * 10), ScrGetboard_up() - 25, 0, 90, 0, 0, 0, 0, 0, 0, (i * 50) + 150);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 160, 30, (i * 10));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 160, -160, 30, (i * 10) + 30);
			but = Bone_Create(320 + (i * 10), ScrGetboard_up() - 25, 0, 90, 0, 0, 0, 0, 0, 0, (i * 10) + 150);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 160, 30, (i * 10));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 160, -160, 30, (i * 10) + 30);
			
			but = Bone_Create(320 - (i * 10), ScrGetboard_down() + 25, 0, 90, 0, 0, 0, 0, 0, 0, (i * 50) + 100);
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 20, (i * 5));
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 160, -160, 30, (i * 5) + 20);
			but = Bone_Create(320 + (i * 10), ScrGetboard_down() + 25, 0, 90, 0, 0, 0, 0, 0, 0, (i * 50) + 100);
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 20, (i * 5));
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 160, -160, 30, (i * 5) + 20);
		}
		//instance_create_depth(320, 320, 0, DreamStick);
		//battle_board.Angle = 3;
		//but = instance_create_depth(320, 320, 0, Bone_len);
		//but.Createnum = 4;
		//but.len = 100;
		//but.length = 60;
		//but.lenDir_move = 5;
		//Anim_Create(but, "len", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 100, -70, 30);
	}
	if (time == 140){
		num = 0;
	}
	if (time >= 140 && time < 155 && time % 5 == 1){
		ScrGBCreate(ScrGetboard_left() + 10 + (num * 80), -40, ScrGetboard_left() + 10 + (num * 80), 120, 0, 0, 1, 2, 30, 25, (45 + (num * 10)), 0, SprSansGB);
		ScrGBCreate(ScrGetboard_right() - (10 + (num * 80)), -40, ScrGetboard_right() - (10 + (num * 80)), 120, 0, 0, 1, 2, 30, 25, (45 + (num * 10)), 0, SprSansGB);
		num++;
	}
	if (time == 240){
		for (var i = 0; i < 6; i++){
			ScrGBCreate(20 + (i * 120), -40, 20 + (i * 120), 120, 0, 0, 2, 2, 25, 25, 30, 0, SprSansGB);
			but = Bone_Create(ScrGetboard_left() - (i * 10), ScrGetboard_down() + 20, 70, 90, 0, 0, 0, 5, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 80, -70, 30, (i * 5) + 20);
			but = Bone_Create(ScrGetboard_right() + (i * 10), ScrGetboard_down() + 20, 70, 90, 0, 0, 0, -5, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 80, -70, 30, (i * 5) + 20);
			
			but = Bone_Create(ScrGetboard_left() - (i * 10), ScrGetboard_up() - 20, 70, 90, 0, 0, 0, 5, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 80, -70, 30, (i * 5) + 20);
			but = Bone_Create(ScrGetboard_right() + (i * 10), ScrGetboard_up() - 20, 70, 90, 0, 0, 0, -5, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.QUART, ANIM_EASE.IN, 80, -70, 30, (i * 5) + 20);
		}
	}
	if (time == 295){
		sb(65, 65, 283, 283, 30);
		but = instance_create_depth(ScrGetboard_left() - 32, 320, 0, Geno_Sq_Attack);
		but.image_xscale = 2;
		but.image_yscale = 1.5;
		but.image_yscale = 1.5;
		but.hspeed = 12;
		Anim_Create(but, "image_yscale", 0, 0, 1.5, 2.5, 30, 10);
		Anim_Create(but, "image_xscale", 0, 0, 2, 2, 30, 10);
		but = instance_create_depth(ScrGetboard_right() + 32, 320, 0, Geno_Sq_Attack);
		but.image_xscale = 2;
		but.image_yscale = 1.5;
		but.hspeed = -12;
		Anim_Create(but, "image_yscale", 0, 0, 1.5, 2.5, 30, 10);
		Anim_Create(but, "image_xscale", 0, 0, 2, 2, 30, 10);
	}
	if (time == 320){
		for (i = 1; i < 6; i++){
			but = Bone_Create(ScrGetboard_left() - 15 + (i * 100), ScrGetboard_up()-10, 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 200, 40, (i * 10));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 200, 80, 40, (i * 10) + 400);
		}
		but = instance_create_depth(0, 0, 0, ButArrowHead);
		but.image_index = 0;
	}
	if (time == 360){
		Bone = ds_list_create();
		for (i = 1; i < 7; i++){
			Bone[|i-1] = instance_create_depth((ScrGetboard_left() - 62 + (i * 100)), 192, 0, Geno_Sq_Attack);
			Bone[|i-1].image_yscale = 4;
			Bone[|i-1].image_xscale = 3;
			Anim_Create(Bone[|i-1], "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 192, 40, 40);
			Anim_Create(Bone[|i-1], "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 232, -41, 40, 40);
		}
		instance_destroy(
			Bone[|
				random_range(0, i-1)
			]
		);
		audio_play_sound(SndAppear_0, 1, 0);
		//GB2312_CHARSET
	}
	if (time >= 360 && time < 510 && time % 15 == 1){
		Bone_Create(0, random_range(260, 380), 30, 0, 0, 0, 0, random_range(3, 10), 0, 1);
		Bone_Create(640, random_range(260, 380), 30, 0, 0, 0, 0, -random_range(3, 10), 0, 1);
	}
	if (time == 380){
		ScrGBCreate(-40, 320, 40, 320, 0, 90, 2, 2, 25, 30, 10, 0, SprSansGB);
	}
	if (time == 430){
		ScrGBCreate(680, ScrGetboard_up()+20, 580, ScrGetboard_up()+20, -90, -90, 1, 2, 25, 30, 10, 0, SprSansGB);
		ScrGBCreate(680, ScrGetboard_down()-20, 580, ScrGetboard_down()-20, -90, -90, 1, 2, 25, 30, 10, 0, SprSansGB);
	}
	if (time == 510){
		for (var i = 0; i < 6; i++;){
			but = Bone_Create(ScrGetboard_left() - 15 + (i * 100), ScrGetboard_down()+10, 0, 90, 0, 0, 0, 0, 0, 1);	
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 80, 20, (i * 10));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 80, -80, 20, (20 + (i * 10)));
		}
	}
	if (time == 530){
		for (i = 0; i < 6; i++){
			but = Bone_Create_Bottom(ScrGetboard_right()+(i * 15), 50, 90, 0, 0, 0, -8, 0, 1);
			var YTARGET_0 = ScrGetboard_down()-but.length/2;
			var YTARGET_1 = ScrGetboard_up()+but.length/2;
			with(but){
				y = YTARGET_0;
				Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, y, YTARGET_1-y, 30, 20 + (i * 3));
			}
			but = Bone_Create_Top(ScrGetboard_left()-(i * 15), 50, 90, 0, 0, 0, 8, 0, 1);
			with(but){
				y = YTARGET_1;
				Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, y, YTARGET_0-y, 30, 20 + (i * 3));
			}
		}
	}
	if (time == 650){
		for (var i = 0; i < 7; i++;){
			but = Bone_Create(ScrGetboard_left() - 65 + (i * 100), ScrGetboard_up()-10, 0, 90, 0, 0, 0, 0, 0, 1);	
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 280, 40, (i * 10));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 280, -280, 40, (40 + (i * 10)));
		}
	}
	if (time == 840){
		audio_play_sound(SndKakakaZi, 1, 0);
		for (i = 1; i < 7; i++){
			if (instance_exists(Bone[|i - 1])){
				Bone[|i - 1].vspeed = 4.5;
			}
		}
		ds_list_destroy(Bone);
	}
	if (time == 900){
		but = instance_create_depth(320, 160, 0, oSansInto);
		audio_play_sound(Sndbone, 1, 0);
		but.mode = 4;
	}
	if (time == 920){
		instance_destroy(agent_Geno);
	}
	if (time == 980){
		Battle_EndTurn();
	}
	/*if (time == 120){
		sb(10, 10, 10, 10, 40);
		Battle_SetSoul(battle_soul_blue);
	}
	
	if (time == 220){
		sb(60, 60, 160 ,160);
		instance_create_depth(320, 340, 0, battle_platform);
		Bone_Create(320, 380, 60, 90, 0, 0, 0, 0, 0, 1);
		Bone_Create(320, 380, 60, 90, 0, 0, 0, 0, 0, 1);
	}*/
	
}
function ScrP1Bout4(){
	if (time == 10){
		but = instance_create_depth(320, 250, 0, oSansInto);
		but.mode = 2;
	}
	if (time == 50){
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, agent_Swap);
	}
	if (time == 140){
		Bone_Create_Top(ScrGetboard_left(), 130, 45, 0, 0, 0, 6, 0, 1);
		Bone_Create_Top(ScrGetboard_right(), 130, -45, 0, 0, 0, -6, 0, 1);
	}
	if (time == 160){
		Bone_Create_Bottom(ScrGetboard_left(), 130, 90, 0, 0, 0, 6, 0, 1);
		Bone_Create_Bottom(ScrGetboard_right(), 130, 90, 0, 0, 0, -6, 0, 1);
		
		Bone_Create(320, 100, 130, 0, 4, 0, 0, 0, 4, 1);
		Bone_Create(320, 100, 130, 90, 4, 0, 0, 0, 4, 1);
	}
	if (time == 260){
		Battle_SetSoul(battle_soul_blue);
	}
	if (time == 280){
		//ScrCreateGunATTACK(320, 320, 50, 0, 10, 30, 20);
		Bone_Create_Bottom(ScrGetboard_left(), 30, 90, 0, 0, 0, 6, 0, 1);
		Bone_Create_Bottom(ScrGetboard_right(), 30, 90, 0, 0, 0, -6, 0, 1);
		
		Bone_Create_Bottom(ScrGetboard_left() - 180, 120, 90, 0, 1, 0, 8, 0, 1);
		Bone_Create_Bottom(ScrGetboard_right() + 180, 120, 90, 0, 1, 0, -8, 0, 1);
	}
	if (time == 310){
		for (var i = 0; i < 7; i++){
			Bone_Create_Bottom(ScrGetboard_right() + (i * 100), 40, 90, 3, 0, 0, -4, 0, 0);
			Bone_Create_Bottom(ScrGetboard_left() - (i * 100), 20, 90, 3, 0, 0, 4, 0, 0);
			
			Bone_Create_Top(ScrGetboard_right() + (i * 100), 100 + random_range(10, 40), 90, 0, 1, 0, -4, 0, 0);
			Bone_Create_Top(ScrGetboard_left() - (i * 100), 100 + random_range(10, 40), 90, 0, 1, 0, 4, 0, 0);
			
			Bone_Create_Top(ScrGetboard_right()+50 + (i * 100), 80, 90, 3, 0, 0, -4, 0, 0);
			Bone_Create_Top(ScrGetboard_left()-50 - (i * 100), 80, 90, -3, 0, 0, 4, 0, 0);
		}
		
	}
	if (time == 500){
		Bone_Create_Bottom(320, 30, 0, 7, 1, 0, 0, -7, 1);
		Bone_Create_Bottom(320, 30, 0, -7, 1, 0, 0, -7, 1);
	}
	if (time == 530){
		instance_destroy(battle_bullet);
		sb(65, 65, 120, 120);
		for (i = 0; i < 16; i++){
			var COLOR = choose(1, 2);
			if (i == 15){
				COLOR = 1;
			}
			Bone_Create(540 + (i * 120), 320, 120, 90, 0, COLOR, 0, -5, 0, 0);
			Bone_Create(100 - (i * 120), 320, 120, 90, 0, COLOR, 0, 5, 0, 0);
		}
	}
	if (time == 610){
		audio_play_sound(Sndbone, 1, 0);
		but = Bone_Create_Top(320, 0, 90, 0, 0, 0, 0, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 240, 120);
		Anim_Create(but, "hspeed", 0, 0, 0, -6, 20);
		Anim_Create(but, "hspeed", 0, 0, -6, 12, 20, 20);
		but = Bone_Create_Top(320, 0, 90, 0, 0, 0, 0, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 240, 120);
		Anim_Create(but, "hspeed", 0, 0, 0, 6, 20);
		Anim_Create(but, "hspeed", 0, 0, 6, -12, 20, 20);
	}
	if (time == 700){
		audio_play_sound(SndObjCr, 1, 0);
		but = Bone_Create_Bottom(320, 0, 90, 0, 0, 0, 6, 0, 1);
		Anim_Create(but, "length", 0, 0, 0, 260, 80);
		but = Bone_Create_Bottom(320, 0, 90, 0, 0, 0, -6, 0, 1);
		Anim_Create(but, "length", 0, 0, 0, 260, 80);
	}
	if (time == 920){
		audio_play_sound(Sndbone, 1, 0);
		for (i = 0; i < 6; i ++){
			Bone_Create(ScrGetboard_left() - (i * 10), 320, 120, 90, 0, 1, 0, 6, 0, 1);
			Bone_Create(ScrGetboard_right() + (i * 10), 320, 120, 90, 0, 1, 0, -6, 0, 1);
		}
		but = instance_create_depth(320, 250, 0, oSansInto);
		but.mode = 2;
	}
	if (time == 960){
		instance_destroy(agent_Swap);
	}
	if (time == 1010){
		Anim_Create(EnemyControlCenter, "_alpha", 0, 0, 0, 1, 30);
	}
	if (time == 1140){
		Battle_EndTurn();
	}
}
function ScrP1Bout5(){
	if (time == 1){
		sb(45, 45, 45, 45, 30);
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, oSansInto);
		but.mode = 5;
		Anim_Create(EnemyControlCenter, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, EnemyControlCenter.x, 120 - EnemyControlCenter.x, 20);
	}
	if (time == 40) {
		ScrGBCreate(-40, 120, 120, ScrGetboard_down(), 0, 90, 2, 2, 25, 30, 20, 0, SprInkGasterBlaster);
	};
	if (time == 60){
		//EnemyControlCenter._alpha = 0;
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, agent_Murder);
		Battle_SetSoul(battle_soul_blue);
		with (battle_soul_blue){
			impact = true;
			move = 15;
			dir = 270;
		}
		Bone_Create(ScrGetboard_left(), 320, 120, 90, 0, 1, 0, 7, 0, 1);
		Bone_Create(ScrGetboard_right(), 320, 120, 90, 0, 1, 0, -7, 0, 1);
	}
	if (time >= 120 && (time % 120) == 0 && (time <= 400)) {
		with (battle_soul_blue){
			impact = true;
			move = 15;
			dir = 270;
		}
	};
	if (time >= 120 && (time % 30) == 0 && (time <= 500)) {
		audio_replay_sound(Sndbone, 1, 0);
		Bone_Create_Bottom(ScrGetboard_left() - 10, 30, 90, 0, 0, 0, 4, 0, 1);
		Bone_Create_Bottom(ScrGetboard_right() + 10, 30, 90, 0, 0, 0, -4, 0, 1);
		
		but = Bone_Create_Bottom(ScrGetboard_left() - 10, 60, 90, 0, 0, 0, 4, 0, 1);
		Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, ScrGetboard_down(), ScrGetboard_up()-ScrGetboard_down(), 60);
		but = Bone_Create_Bottom(ScrGetboard_right() + 10, 60, 90, 0, 0, 0, -4, 0, 1);
		Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, ScrGetboard_down(), ScrGetboard_up()-ScrGetboard_down(), 60);
	};
	if (time == 240){
		Bone_Create(ScrGetboard_left() - 60, 320, 120, 90, 0, 2, 0, 7, 0, 1);
		Bone_Create(ScrGetboard_right() + 60, 320, 120, 90, 0, 2, 0, -7, 0, 1);
		battle_board.color_bg = c_blue;
		audio_play_sound(snd_noise, 1, false);
	};
	if (time == 380){
		ScrGBCreate(680, 520, 120, 120, -275, 45, 0.7, 2, 45, 10, 20, 0, SprMurderGB);
		ScrGBCreate(-40, 520, 520, 120, 275, -45, 0.7, 2, 45, 10, 20, 0, SprMurderGB);
	}
	if (time == 480) {
		battle_board.color_bg = c_black;
		audio_play_sound(snd_noise, 1, false);
		sb(65, 65, 125, 125, 30);
	};
	if (time == 500) {
		var _ang_ran = random(360);
		but0 = Bone_Create_Top(ScrGetboard_left() - 10, 0, _ang_ran, -3, 0, 0, 3, 0, 1);
		Anim_Create(but0, "length", 1, ANIM_EASE.OUT, 0, 60, 30, 20);
		Anim_Create(but0, "length", 1, ANIM_EASE.IN_OUT, 60, -50, 10, 70);
		Anim_Create(but0, "vspeed", 0, 0, 0, 3, 30, 40);
		Anim_Create(but0, "hspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but0, "vspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but0, "rotate", 0, 0, -3, 3, 40, 70);
		but1 = Bone_Create_Top(ScrGetboard_left() - 10, 0, _ang_ran + 90, -3, 0, 0, 3, 0, 1);
		Anim_Create(but1, "length", 1, ANIM_EASE.OUT, 0, 60, 30, 20);
		Anim_Create(but1, "length", 1, ANIM_EASE.IN_OUT, 60, -50, 10, 70);
		Anim_Create(but1, "vspeed", 0, 0, 0, 3, 30, 40);
		Anim_Create(but1, "hspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but1, "vspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but1, "rotate", 0, 0, -3, 3, 40, 70);

		
		_ang_ran = random(360);
		but2 = Bone_Create_Top(ScrGetboard_right() + 10, 0, _ang_ran, 3, 0, 0, -3, 0, 1);
		Anim_Create(but2, "length", 1, ANIM_EASE.OUT, 0, 60, 30, 20);
		Anim_Create(but2, "length", 1, ANIM_EASE.IN_OUT, 60, -40, 10, 70);
		Anim_Create(but2, "vspeed", 0, 0, 0, 3, 30, 40);
		Anim_Create(but2, "vspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but2, "hspeed", 0, 0, -3, 3, 20, 70);
		Anim_Create(but2, "rotate", 0, 0, 3, -3, 40, 70);
		but3 = Bone_Create_Top(ScrGetboard_right() + 10, 0, _ang_ran + 90, 3, 0, 0, -3, 0, 1);
		Anim_Create(but3, "length", 1, ANIM_EASE.OUT, 0, 60, 30, 20);
		Anim_Create(but3, "length", 1, ANIM_EASE.IN_OUT, 60, -40, 10, 70);
		Anim_Create(but3, "vspeed", 0, 0, 0, 3, 30, 40);
		Anim_Create(but3, "vspeed", 0, 0, 3, -3, 20, 70);
		Anim_Create(but3, "hspeed", 0, 0, -3, 3, 20, 70);
		Anim_Create(but3, "rotate", 0, 0, 3, -3, 40, 70);
		
		
	};
	if (time == 640) {
		var i = 0;
		repeat (4) { with (variable_instance_get(id, $"but{string(i)}")) { direction = angle; Anim_Create(id, "speed", 0, 0, 0, (choose(6, -6)), 30); }; i += 1; };
	};
	/*for (var i = 0; i < 3; i ++;){
		if (time == 120 + (i * 40)) then ScrGBCreate(-40, 320, ScrGetboard_left() - 40, ScrGetboard_up() + (i * 60), 0, 90, 1, 2, 30, 25, 25, 0, SprMurderGB);
	}
	for (var i = 0; i < 5; i ++;){
		if (time == 200 + (i * 30)) then ScrGBCreate(-40, 320, ScrGetboard_left() - 40, ScrGetboard_up() + (i * 30), 0, 90, 0.6, 2, 30, 25, 10, 0, SprMurderGB);
	}
	if (time >= 80 && (time % 120) == 0 && time <= 740){
		instance_create_depth(global.hx, 0, 0, oTrident);
	}*/
	if (time == 380){ but = instance_create_depth(320, 320, 0, oMurderKillerKnife); };
	if (time == 420){
		Bone_Create_Top(ScrGetboard_left(), 100, 90, 0, 0, 0, 7, 0, 1, 0, oBone_Papy);
		Bone_Create_Bottom(ScrGetboard_left(), 30, -40, 0, 0, 0, 7, 0, 1, 0, oBone_Papy);
	}
	if (time == 480){
		Bone_Create_Top(ScrGetboard_right(), 100, 90, 0, 0, 0, -7, 0, 1, 0, oBone_Papy);
		Bone_Create_Bottom(ScrGetboard_right(), 30, 40, 0, 0, 0, -7, 0, 1, 0, oBone_Papy);
	}
	if (time >= 530 && (time % 25) == 0 && time <= 740){
		audio_replay_sound(Sndbone, 1, 0);
		but = Bone_Create_Bottom(ScrGetboard_left(), random_range(30, 70), 90, 0, 0, 0, 5, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, but.length, -but.length, 20, 20);
		Anim_Create(but, "hspeed", 0, 0, 5, 5, 40, 40);
		but = Bone_Create_Bottom(ScrGetboard_right(), random_range(30, 70), 90, 0, 0, 0, -5, 0, 1);
		Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, but.length, -but.length, 20, 20);
		Anim_Create(but, "hspeed", 0, 0, -5, -5, 40, 40);
	}
	if (time == 630){
		but = instance_create_depth(global.hx, global.hy, 0, oMurderKillerKnife);
	}
	if (time == 680) { audio_play_sound(SndBigDudeCr, 1, false); but = instance_create_depth(0, 300, 0, oTrident, { image_angle : -90, hspeed : -18, x : (ScrGetboard_right() + (sprite_get_height(but.sprite_index))) }); but.mode = 0; but.IsWarn = false; };
	if (time == 720) { 
		audio_play_sound(snd_noise, 1, false);
		Bone_Create(ScrGetboard_left(), 320, 120, 90, 0, 1, 0, 7, 0, 1);
		Bone_Create(ScrGetboard_right(), 320, 120, 90, 0, 1, 0, -7, 0, 1);
	};
	if (time == 740){
		Battle_SetSoul(battle_soul_red);
		Anim_Create(agent_Murder, "_SMPAlpha", 0, 0, 0.4, -0.4, 30);
	}
	if (time >= 700 && (time % 40) == 0 && time <= 1100){
		but = instance_create_depth(global.hx, global.hy, 0, oMurderKillerKnife);
		but.image_angle = random(360);
	}
	if (time >= 800 && (time % 50) == 0 && time <= 1060){ instance_create_depth(random_range(ScrGetboard_left(), ScrGetboard_right()), 0, 0, oTrident, { y : ScrGetboard_up() - 10 }); };
	if (time == 1060){
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, oSansInto);
		but.mode = 7;
	}
	if (time == 1120){
		instance_destroy(agent_Murder);
	}
	if (time == 1200){
		Battle_EndTurn();
	}
}
function ScrP1Bout6(){
	if (time == 1){
		//Battle_SetSoul(battle_soul_yellow);
		//EnemyControlCenter._alpha = 0;
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y() - 40, 0, oSansInto);
		but.mode = 6;
		audio_play_sound(SndAppear_0, 1, 0);
		//EnemyDeath
	}
	if (time == 21){
		EnemyControlCenter._alpha = 0;
		but = instance_create_depth(314, 192, 0, oDeathInit);
		Anim_Create(but, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 0, 360, 80, 20);
		Anim_Create(but, "image_alpha", 0, 0, 1, -1, 20, 120);
	}
	if (time == 41) then audio_play_sound(SndFire, 2, 0);
	if (time == 100){
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, EnemyDeath);
	}
	if (time == 121){
		EnemyDeath.DrawSickle = true;
	}
	if (time >= 121){
		if (instance_exists(EnemyDeath)){
			if (!instance_exists(oDeathInit)) then EnemyDeath.wiggle = true; else EnemyDeath.wiggle = false;
		}
	}
	if (time == 230){
		ScrGBCreate(ScrGetboard_left(), -40, ScrGetboard_left() + 20, 160, 0, 0, 2, 2, 25, 20, 25, 0, SprDeathGasterBlaster);
		ScrGBCreate(ScrGetboard_right(), -40, ScrGetboard_right() - 20, 160, 0, 0, 2, 2, 25, 20, 25, 0, SprDeathGasterBlaster);
		ScrGBCreate(-40, ScrGetboard_up(), 160, ScrGetboard_up() + 20, 90, 90, 2, 2, 25, 20, 25, 0, SprDeathGasterBlaster);
		ScrGBCreate(-40, ScrGetboard_down(), 160, ScrGetboard_down() - 20, 90, 90, 2, 2, 25, 20, 25, 0, SprDeathGasterBlaster);
	}
	if (time == 280){
		ScrGBCreate(-40, 320, 160, 320, 90, 90, 1, 2, 25, 30, 25, 0, SprDeathGasterBlaster);
		ScrGBCreate(320, -40, 320, 160, 0, 0, 1, 2, 25, 30, 25, 0, SprDeathGasterBlaster);
		Anim_Create(EnemyDeath, "Sickle_y", ANIM_TWEEN.SINE, ANIM_EASE.IN, 0, -400, 60);
	}
	if (time == 310){
		Anim_Create(battle_board, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 45, 30);
		ScrGBCreate(ScrGetboard_left() - 100, ScrGetboard_down() + 100, ScrGetboard_left() - 20, ScrGetboard_down() + 20, 90, 135, 1, 2, 25, 30, 25, 0, SprInkGasterBlaster);
		ScrGBCreate(ScrGetboard_right() + 100, ScrGetboard_down() + 100, ScrGetboard_right() + 20, ScrGetboard_down() + 20, -90, -135, 1, 2, 25, 30, 25, 0, SprInkGasterBlaster);
		//sb(75, 75, 75, 75, 30);
	}
	if (time >= 350){
		if (battle_board.angle >= 0) then battle_board.angle -= 0.1;
	}
	if (time == 320){
		Sickle = instance_create_depth(700, 240, 0, oDeathSickle);
		Anim_Create(Sickle, "x", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 700, -180, 120);
		Anim_Create(Sickle, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 240, -40, 60);
		Anim_Create(Sickle, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 70, 120);
	}
	if (time == 380){
		ScrGBCreate(global.hx, -40, global.hx, 120, 0, 0, 2, 2, 20, 10, 30, 0, SprDeathGasterBlaster);
		ScrGBCreate(-40, global.hy, 120, global.hy, 90, 90, 2, 2, 20, 10, 30, 0, SprDeathGasterBlaster);
	}
	if (time == 400){
		for (var i = 0; i < 8; i++;){
			Bone_Create(320, (140 - (i * 60)), 30, 90, 0, 0, 0, 0, (8 - (i/2)), 0, (200 + (i * 20)));
			Bone_Create((140 - (i * 60)), 320, 30, 0, 0, 0, 0, (8 - (i/2)), 0, 0, (200 + (i * 20)));
		}
	}
	if (time == 420){
		Spebut0 = Bone_Create(ScrGetboard_up() - 20, (ScrGetboard_left() - 20), 0, 145, 0, 0, 0, 0, 0, 1, , );
		Anim_Create(Spebut0, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 60);
		Spebut1 = Bone_Create(ScrGetboard_up() - 20, (ScrGetboard_right() + 20), 0, 55, 0, 0, 0, 0, 0, 1, , );
		Anim_Create(Spebut1, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 60);
		Spebut2 = Bone_Create(ScrGetboard_down() + 20, (ScrGetboard_left() - 20), 0, 55, 0, 0, 0, 0, 0, 1, , );
		Anim_Create(Spebut2, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 60);
		Spebut3 = Bone_Create(ScrGetboard_down() + 20, (ScrGetboard_right() + 20), 0, 145, 0, 0, 0, 0, 0, 1, , );
		Anim_Create(Spebut3, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 160, 60);
	}
	if (time == 440){
		Sickle.PartFire = true;	
		audio_play_sound(Sndbone, 0, false);
		with (Sickle){
			direction = (point_direction(x, y, (global.hx + 150), global.hy));
			Anim_Create(id, "speed", ANIM_TWEEN.BACK, ANIM_EASE.IN, 0, 8, 100);
			Anim_Create(id, "speed", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 8, -8, 20, 100);
			Anim_Create(id, "image_angle", ANIM_TWEEN.BACK, ANIM_EASE.IN_OUT, image_angle, 170, 200);
			
			//重山TODO: 叠的比我写的粪还多
			//宋弦司TODO: Anim是这样的
			//重山TODO: 但凡你自己写一个也不至于叠那么多ANIM（
			//宋弦司TODO: 确实，但是我不会写缓动公式（
			//重山TODO: 精通GML系列
			
			//宋弦司TODO: 实在是不想写ink了啊
			//重山TODO: 得跑路了吗
			//宋弦司TODO: 草不至于（
			
			//TODO：end in 7.12.
		}
	}
	if (time == 520){
		for (var i = 0; i < 4; i++){
			with ((variable_instance_get(id, (string("Spebut{0}", i))))){
				Anim_Create(id, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, angle, -45, 40);
				Anim_Create(id, "angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, angle - 45, +45, 80, 50);
				
				Anim_Create(id, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, length, 40, 60);
				Anim_Create(id, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, length + 40, -length - 40, 60, 120);
			}
		}
		for (var i = 0; i < 2; i ++){with ((variable_instance_get(id, (string("SpeBonebut{0}", i))))){Anim_Create(id, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, length, -20, 30);}}
		//重山TODO: 中文括号？
		//重山TODO: 你恐怕是想invalid token（了
		//宋弦司TODO: 换了一个字体根本看不出来
		audio_play_sound(snd_ding, 1, false);
		Battle_SetSoul(battle_soul_red);
	}
	if (time == 780) then with (Sickle) Anim_Create(id, "hspeed", 0, 0, 0, -24, 30);
	if (time == 820) then Anim_Create(EnemyDeath, "Sickle_y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, -400, 400, 60);
	if (time == 840){
		Anim_Create(SpeBonebut1, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 10, 30, 60);
		Anim_Create(SpeBonebut1, "y", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 320, -10, 60);
		Anim_Create(SpeBonebut0, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 10, 50, 60);
	}
	if (time >= 840 && (time % 110) == 0 && time <= 1700){
		var _dir = choose(90, 180, 270, 0);
		battle_soul_blue.dir = _dir;
		battle_soul_blue.impact = 1;
		battle_soul_blue.move = 10;
		with (instance_create_depth(0, 0, 0, ButArrowHead)){
			switch (_dir){
				case (DIR.DOWN):image_index = 0;break;
				case (DIR.UP):image_index = 2;break;
				case (DIR.LEFT):image_index = 3;break;
				case (DIR.RIGHT):image_index = 1;break;
			}
		}
			var _gb_cr = function() {}, 
				_cr_x,
				_cr_y,
				_cr_ang,
				_cr_tar_x,
				_cr_tar_y,
				_cr_obj,
				_cr_gb_status = (choose(0, 1));
			with (_gb_cr){
				switch (_cr_gb_status){
					case 0:
						if (_dir == DIR.DOWN || _dir == DIR.UP){
							_cr_x = (choose(-40, 680));
							switch (_cr_x){
								case (-40):
									_cr_ang = 90;
									_cr_tar_x = (ScrGetboard_left() - 60);
									break;
								case (680):
									_cr_ang = -90;
									_cr_tar_x = (ScrGetboard_right() + 60);
									break;
							};
							_cr_y = ((_dir == DIR.DOWN) ? (ScrGetboard_down() - 20) : (ScrGetboard_up() + 20));
							_cr_obj = (ScrGBCreate(_cr_x, _cr_y, _cr_tar_x, _cr_y, _cr_ang, _cr_ang, 2, 2, 30, 25, 25, 0, SprDeathGasterBlaster));
								
						}else{
							
							_cr_y = (choose(-40, 520));
							switch (_cr_y){
								case (-40):
									_cr_ang = 0;
									_cr_tar_y = (ScrGetboard_up() - 60);
									break;
								case (520):
									_cr_ang = -180;
									_cr_tar_y = (ScrGetboard_down() + 60);
									break;
							}
							_cr_x = ((_dir == DIR.LEFT) ? (ScrGetboard_left() + 20) : (ScrGetboard_right() - 20));
							_cr_obj = (ScrGBCreate(_cr_x, _cr_y, _cr_x, _cr_tar_y, _cr_ang, _cr_ang, 2, 2, 30, 25, 25, 0, SprDeathGasterBlaster));
						}
						return _cr_obj;
						break;
					case 1:
						ScrGBCreate(global.hx, -40, global.hx, 120, 0, 0, 2, 2, 30, 25, 25, 0, SprDeathGasterBlaster);
						ScrGBCreate(-40, global.hy, 120, global.hy, 90, 90, 2, 2, 30, 25, 25, 0, SprDeathGasterBlaster);
						
						return true;
						break;
				};
			};
		//重山TODO: 哇是粪山
		//宋弦司TODO: 草
		
		//DarkTODO: 绑定域我去
		
	}
	//止笔于：23 06 18
	if (time == 500){
		SpeBonebut0 = Bone_Create(320, 140, 30, 90, 0, 0, 0, 0, 0, 0);
		Anim_Create(SpeBonebut0, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 140, 320-140, 120);
		SpeBonebut1 = Bone_Create(140, 320, 30, 0, 0, 0, 0, 0, 0, 0);
		Anim_Create(SpeBonebut1, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 140, 320-140, 120);
	}
	if (time == 560){
		with (Sickle){
			Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, x, 60, 60);
			Anim_Create(id, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, y, 140, 60);
			Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, image_angle, -240, 120, 80);
		}
	}
	//TODO: 到时候这俩延长length 最后退场骨头卡着框旋转升天留下黑色残影使鳝丝退场
	//重山TODO: 写得好
	
	if (time == 450) then Battle_SetSoul(battle_soul_blue);
	for (var i = 0; i < 4; i ++;){
		if (time == (450 + (i * 100))){
			battle_board.SoulLimt = false;
			audio_play_sound(snd_ding, 1, false);
			Battle_SetSoul(battle_soul_blue);
			var _dir = choose(90, 180, 270, 0);
			battle_soul_blue.dir = _dir;
			but = instance_create_depth(0, 0, 0, ButArrowHead);
			with (but){
				switch (_dir){
					case (DIR.DOWN): image_index = 0; break;
					case (DIR.UP): image_index = 2; break;
					case (DIR.LEFT): image_index = 3; break;
					case (DIR.RIGHT): image_index = 1; break;
				}
			}
		}
	}
	if (time == 1700){
		//30, 10, 60);
		//320, 10, 60);
		//, 30, 30, 60);
	}
	if (time == 1760){
		Anim_Create(SpeBonebut1, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 40, -30, 60);
		Anim_Create(SpeBonebut1, "y", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 310, 10, 60);
		Anim_Create(SpeBonebut0, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN_OUT, 60, -50, 60);
		instance_destroy(oDeathSickle);
		but = instance_create_depth(314, 192, 0, oDeathInit, { image_alpha : 0 });
		Anim_Create(but, "image_alpha", 0, 0, 0.8, 0.2, 10);
		Anim_Create(but, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 0, 360, 80, 20);
		audio_play_sound(snd_ding, 1, false);
		Battle_SetSoul(battle_soul_red);
		ScrGBCreate(320, 520, 320, 440, 180, 180, 9, 2, 30, 25, 40, choose(1, 2), SprDeathGasterBlaster);
		EnemyDeath.DrawSickle = false;
	}
	if (time == 1830){
		instance_destroy(SansBone);
		instance_destroy(EnemyDeath);
		EnemyControlCenter._alpha = 1;
		instance_destroy(oDeathInit);
	}
	if (time == 1900) then Battle_EndTurn();
}
function ScrP1Bout7(){
	///@desc				 Special Attack
	///@arg    {Real}		 _x
	///@arg	   {Real}		 _y
	///@arg    {Real}		 _Len
	///@arg    {Real}		 _Dir
	///@arg    {Real}        _LenDe
	///@arg    {Real}        _DirDe
	///@return {Id.Instance}
	function ScrCreateGunATTACK(_x, _y, _Len, _Dir, _LenDe, _DirDe){
		if ((is_undefined(_x)) || is_undefined(_y == undefined)) then return -1;
		var _inst = instance_create_depth(_x, _y, 0, Gun_Aim, { LenMove : _LenDe, DirMove : _DirDe, Lendraw : _Len, Dirdraw : _Dir });
		
		return _inst;
	}
	if (time == 1){
		sb(65, 65, 120, 120, 35);
		//Battle_SetSoul(battle_soul_yellow);
		
		
		instance_create_depth(-40, Scr_Getagent_y(), 0, EnemyYH);
		with (instance_create_depth(680, Scr_Getagent_y() + 25, 0, EnemyLoris)) HeadImage = 2;//俩弔人
		Anim_Create(EnemyYH, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, -40, 160, 50);
		Anim_Create(EnemyLoris, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 680, -160, 50);
		
	}
	if (time >= 30 && (time % 15) == 0 && time <= 240){
		audio_replay_sound(snd_noise, 1, false);
		but = instance_create_depth(random_range(240, 480), random_range(240, 480), 0, oLorisFireBall);
		but.alarm[0] = 30;
	}
	if (time == 80){
		SpeFireBall = instance_create_depth(320, 320, 0, oLorisFireBall, { image_xscale : 0, image_yscale : 0, Mode : 2 });
		Anim_Create(SpeFireBall, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 3, 30);
		Anim_Create(SpeFireBall, "image_yscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 3, 30);
	}
	if (time == 120){
		audio_play_sound(snd_pistol_prepare, 1, 0);
		ScrCreateGunATTACK(global.hx, global.hy, 120, 90, 3, 5);
		
		ScrCreateGunATTACK((ScrGetboard_left() + 20), (ScrGetboard_up() + 20), 40, 0, 1, 0);
		ScrCreateGunATTACK((ScrGetboard_right() - 20), (ScrGetboard_up() + 20), 40, 0, 1, 0);
		ScrCreateGunATTACK((ScrGetboard_left() + 20), (ScrGetboard_down() - 20), 40, 0, 1, 0);
		ScrCreateGunATTACK((ScrGetboard_right() - 20), (ScrGetboard_down() - 20), 40, 0, 1, 0);
	}
	for (i = 0; i < 3; i++;){ 
		if (time == 160 + (i * 10)) {
			but = Bone_Create(ScrGetboard_left(), ScrGetboard_up(), 160, 90, 0, 0, 0, 6, 0, 1);
			Anim_Create(but, "hspeed", 0, 0, 6, -12, 30, 30);
			Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, ScrGetboard_up(), (ScrGetboard_down()-40) - ScrGetboard_up(), 60, 50);
			//Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 90, - 60, 30, 50);
			Anim_Create(but, "color", 0, 0, 0, choose(1, 2), 0, 50);
		};
	}
	if (time >= 130 && time <= 580){
		SpeFireBall.image_xscale += (sin(time / 6) / 8);
		SpeFireBall.image_yscale += (sin(time / 6) / 8);
	}
	if (time >= 130){
		if (instance_exists(SpeFireBall)){
			with (SpeFireBall){
				static CreBallBool = true;
				if (image_yscale >= 3 && CreBallBool && image_alpha >= 1){
					audio_replay_sound(snd_noise, 1, 0);
					for (var i = 0; i < 2; i ++){
						but = instance_create_depth(x, y, 0, object_index, { Lenable : true, Len : 0, LenMove : 1, LenMoveReal : 4, LenX : x, LenY : y});
						randomize();
						but.Dir += random(360);
					}
				}else{
					CreBallBool = (!CreBallBool);
				}
			}
		}
	}
	if (time == 240) {
		for (i = 0; i < 5; i++) {
			but = Bone_Create(ScrGetboard_left() + (i * 60), (ScrGetboard_down() + 10), 0, 90, 0, 0, 0, 0, 0, 0, 300);
			
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 260, 40);
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 260, -260, 80, 60);
		};
	};
	if (time == 300){
		ScrCreateGunATTACK(global.hx, global.hy, 120, 90, 3, 5);
		ScrGBCreate(-40, ScrGetboard_up() + 20, 120, ScrGetboard_up() + 20, -90, 90, 1, 2, 30, 25, 40, 0, SprInkGasterBlaster);
		ScrGBCreate(680, ScrGetboard_down() - 20, 520, ScrGetboard_down() - 20, 90, -90, 1, 2, 30, 25, 40, 0, SprInkGasterBlaster);
	}
	if (time == 380){
		ScrGBCreate(global.hx - 60, -40, global.hx - 60, 120, 0, 0, 1, 2, 30, 25, 50, 0, SprInkGasterBlaster);
		ScrGBCreate(global.hx + 60, -40, global.hx + 60, 120, 0, 0, 1, 2, 30, 25, 50, 0, SprInkGasterBlaster);
	}
	if (time >= 480 && (time % 20) == 0 && time <= 580){
		but = instance_create_depth(ScrGetboard_left() - 10, random_range(ScrGetboard_up(), ScrGetboard_down()), 0, oLorisFireBall);
		but.Mode = 1;
		but._shakerange = 12
		but.hspeed = random_range(3, 1);
		but = instance_create_depth(ScrGetboard_right() + 10, random_range(ScrGetboard_up(), ScrGetboard_down()), 0, oLorisFireBall);
		but.Mode = 1;
		but.hspeed = -random_range(3, 1);
		but._shakerange = 12;
	}
	if (time >= 420 && (time % 60) == 0 && time <= 600){
		repeat (5) {
			var _ran_x = random_range(ScrGetboard_left() - 5, ScrGetboard_right() + 5);
			but = Bone_Create(_ran_x, ScrGetboard_down()+20, 20, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, ScrGetboard_down() + 20, ScrGetboard_down() - 10 - (ScrGetboard_down() + 20), 20);
			Anim_Create(but, "vspeed", ANIM_TWEEN.BACK, ANIM_EASE.IN, 0, -random_range(2, 6), 30, 30);
		}
	}
	if (time == 580){
		with (SpeFireBall){
			Anim_Create(id, "image_xscale", ANIM_TWEEN.BACK, ANIM_EASE.IN, image_xscale, -image_xscale, 30);
			Anim_Create(id, "image_yscale", ANIM_TWEEN.BACK, ANIM_EASE.IN, image_yscale, -image_yscale, 30);
			
			Anim_Create(id, "image_alpha", 0, 0, 1, -1, 20);
		}
	}
	if (time == 600){
		var i = 0;
		repeat (8){
			but = instance_create_depth(320, 320, 0, oLorisFireBall, { Lenable : true, Len : 0, LenMove : 1, LenMoveReal : 4, DirMoveReal : 2, DirMove : 1, LenX : 320, LenY : 320 });
			but.Dir += (i * 45);
			i ++;
		}
		audio_replay_sound(snd_noise, 1, 0);
	}
	if (time == 650){
		Anim_Create(EnemyLoris, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 520, -200, 40);
		Anim_Create(EnemyYH, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 120, -300, 40);
		Anim_Create(EnemyControlCenter, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 320, -500, 40);
		sb(65, 65, 65, 65, 40);
	}
	if (time >= 700 && (time % 10) == 0 && time <= 900) then instance_create_depth(random_range(ScrGetboard_left(), ScrGetboard_right()), ScrGetboard_down() + 10, 0, oLorisFireBall, { vspeed : -(random_range(4, 1)) });
	if (time == 900){
		Anim_Create(EnemyLoris, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 320, -500, 40);
		Anim_Create(EnemyYH, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, -220, 550, 30);
		ScrCreateGunATTACK(global.hx, global.hy, 120, 90, 3, 5);
	}
	if (time == 920){
		var i = 0;
		repeat (4){
			with (ScrCreateGunATTACK(320, 320, 120, 0, 3, 5)) Dirdraw += (i * 45);
		}
	}
	if (time == 950){
		for (var i = 0; i < 8; i ++){
			ScrCreateGunATTACK(ScrGetboard_left() + (i * 20), 320, 160, 0, 2, random_range(1, 4));
			ScrCreateGunATTACK(320, ScrGetboard_down() - (i * 20), 10, 0, 2, random_range(1, 4));
		}
	}
	if (time == 1000){
		for (var i = 0; i < 8; i ++){
			ScrCreateGunATTACK(ScrGetboard_left() + (i * 20), ScrGetboard_up() + (i * 20), 160, 0, 2, random_range(1, 4));
			ScrCreateGunATTACK(ScrGetboard_right() - (i * 20), ScrGetboard_up() + (i * 20), 160, 0, 2, random_range(1, 4));
		}
	}
	if (time == 1050){
		for (var i = 0; i < 8; i ++){
			ScrCreateGunATTACK(ScrGetboard_left() + (i * 20), ScrGetboard_up() + (i * 20), 160, 0, 2, random_range(1, 4));
			ScrCreateGunATTACK(ScrGetboard_right() - (i * 20), ScrGetboard_up() + (i * 20), 160, 0, 2, random_range(1, 4));
			ScrCreateGunATTACK(ScrGetboard_left() + (i * 20), 320, 160, 0, 2, random_range(1, 4));
			ScrCreateGunATTACK(320, ScrGetboard_down() - (i * 20), 10, 0, 2, random_range(1, 4));
		}
	}
	if (time == 1150){
		Anim_Create(EnemyYH, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 320, 500, 30);
		EnemyControlCenter._alpha = 0;
		EnemyControlCenter.x = 320;
		Anim_Create(EnemyControlCenter, "_alpha", 0, 0, 0, 1, 30);
	}
	if (time == 1270) then Battle_EndTurn();
}
function ScrP1Bout8(){
	if (time == 1){
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y() + 50, 0, oSansInto);
		but.mode = 8;
		Anim_Create(EnemyControlCenter, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 320, -160, 30);
	}
	if (time == 10) { instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, EnemyKiller); };
	if (time == 60){
		but = instance_create_depth(global.hx, global.hy, 0, oMurderKillerKnife);
		but.image_angle = 45;
		but = instance_create_depth(global.hx, global.hy, 0, oMurderKillerKnife);
		but.image_angle = -45;
	}
	if (time == 90) then sb(45, 45, 65, 65);
	if (time == 100) then instance_create_depth(320, 320, 0, oMurderKillerKnife, { image_angle : 90 });
	if (time == 120){
		instance_create_depth(320, 340, 0, oMurderKillerKnife, { image_angle : 90 });
		instance_create_depth(320, 300, 0, oMurderKillerKnife, { image_angle : 90 });
		sb(65, 65, 65, 65);
	}
	if (time == 140) then instance_create_depth(global.hx, global.hy, 0, oMurderKillerKnife);
	
	if (time >= 120 && (time % 50) == 0 && time <= 380) {
		instance_create_depth(320, 320, 0, oMurderKillerKnife, { image_angle : random(360) });
	};
	if (time == 160) { 
		Bone_Create_Top(ScrGetboard_left(), 120, 90, -4, 0, 0, 6, 0, 1);
		Bone_Create_Bottom(ScrGetboard_right(), 120, 90, 4, 0, 0, -6, 0, 1);
	};
	if (time == 200) {
		Battle_SetSoul(battle_soul_blue);
		for (var i = 0; i < ((ScrGetboard_right() - ScrGetboard_left()) / 10) + 2; i ++) {
			but = Bone_Create(ScrGetboard_left() + (i * 10), ScrGetboard_down() + 10, 0, 90, 0, 0, 0, 0, 0, 1, 100 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 90, 20, (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 90, -90, 20, 20 + (i * 3));
			but = Bone_Create(ScrGetboard_left() + (i * 10), ScrGetboard_up() - 10, 0, 90, 0, 0, 0, 0, 0, 1, 100 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 90, 20, (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 90, -90, 20, 20 + (i * 3));
			
			
		};
		instance_create_depth(320, 320, 0, oMurderKillerKnife, { image_angle : 90 });
	};
	for (i = 0; i < 4; i ++) {
		if (time == (180 + (i * 20))) {
			but = Bone_Create_Top((ScrGetboard_left() - 10), 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 160, 50, 30);
			Anim_Create(but, "speed", ANIM_TWEEN.SINE, ANIM_EASE.IN, 0, 12, 80);
			
			but = Bone_Create_Top((ScrGetboard_right() + 10), 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 160, 50, 30);
			Anim_Create(but, "speed", ANIM_TWEEN.SINE, ANIM_EASE.IN, 0, -12, 80);
		};
	};
	if (time == 220){ Battle_SetSoul(battle_soul_red); };
	for (i = 0; i < 4; i ++) {
		if (time == 220 + (i * 10)){
			Bone_Create(ScrGetboard_left() - 10, 320, 120, 90, 0, 2, 0, 8, 0, 1);
			Bone_Create(ScrGetboard_right() + 10, 320, 120, 90, 0, 2, 0, -8, 0, 1);
		};
	};
	if (time == 220) { ScrGBCreate(680, 320, ScrGetboard_right() + 40, 370, 90, -90, 2, 2, 30, 25, 25, 0) };
	if (time == 280) { for (var i = 0; i < 3; i ++) { instance_create_depth(((ScrGetboard_left() + 20) + (i * 40)), ScrGetboard_up() - 60, 0, oKillerKnife, { image_angle : -90, vspeed : 4 }); }; };
	if (time == 320) { for (var i = 0; i < 4; i ++) { instance_create_depth((ScrGetboard_left() + (i * 40)), ScrGetboard_down(), 0, oKillerKnife, { image_angle : 90, vspeed : -4 }); }; };
	for (var i = 0; i < 3; i ++) { if (time == 340 + (i * 15)) { Bone_Create(320, ScrGetboard_up() - 10, 120, 0, 0, choose(1, 2), 0, 0, 3, 1); }; };
	for (var i = 0; i < 5; i ++) { if (time == 360 + (i * 10)) { instance_create_depth(280, ScrGetboard_down(), 0, oKillerKnife, { vspeed : -5, gravity : 0.1}); instance_create_depth(360, ScrGetboard_down(), 0, oKillerKnife, { image_angle : -180, vspeed : -5, gravity : 0.1 }); }; };
	for (var i = 0; i < 3; i ++) { if (time == 420 + (i * 15)) { Bone_Create(320, ScrGetboard_down() + 10, 120, 0, 0, choose(1, 2), 0, 0, -3, 1); }; };
	if (time == 430) { ScrGBCreate(320, 520, 320, 440, 0, 180, 2, 2, 30, 25, 25, 0); };
	if (time == 450) { 
		but = instance_create_depth((ScrGetboard_right() + 40), (ScrGetboard_up() - 40), 0, oKillerKnife, { image_angle : -135, mode : 1 });
		but.speed = 7;
		but = instance_create_depth((ScrGetboard_left() - 40), (ScrGetboard_up() - 40), 0, oKillerKnife, { image_angle : -45, mode : 1 });
		but.speed = 7;
		but = instance_create_depth((ScrGetboard_left() - 40), (ScrGetboard_down() + 40), 0, oKillerKnife, { image_angle : 45, mode : 1 });
		but.speed = 7;
		but = instance_create_depth((ScrGetboard_right() + 40), (ScrGetboard_down() + 40), 0, oKillerKnife, { image_angle : 135, mode : 1 });
		but.speed = 7;
	};
	if (time == 500) { instance_create_depth(300, 380, 0, oMurderKillerKnife); instance_create_depth(340, 260, 0, oMurderKillerKnife); };
	if (time == 510) { ScrGBCreate(320, 520, 320, 440, 0, 180, 2, 2, 30, 25, 25, 0); };
	if (time == 520) {
		but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y() + 50, 0, oSansInto);
		but.mode = 9;
		Anim_Create(but, "KillerEndPosY", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, -250, 60);
		Anim_Create(but, "image_alpha", 0, 0, 1, -1, 30, 90);
		// TODO: 然后武秀杰在向我炫耀他新买的笔记本
		// TODO: 气死我了，不写了
	};
	if (time == 535) { 
		instance_create_depth(ScrGetboard_right() + 40, 320, 0, oKillerKnife, { hspeed : -6, image_angle : -180 });
		instance_create_depth(320, ScrGetboard_down() + 40, 0, oKillerKnife, { vspeed : -6, image_angle : 90 });
		instance_create_depth(ScrGetboard_left() - 40, 320, 0, oKillerKnife, { hspeed : 6 });
		instance_create_depth(320, ScrGetboard_up() - 40, 0, oKillerKnife, { vspeed : 6, image_angle : -90 });
	};
	if (time == 580){
		with (oSansInto){ KillerOutlinable = false; };
		instance_destroy(EnemyKiller);
		audio_play_sound(snd_noise, 1, 0);
	}
	if (time == 585) {
		audio_play_sound(snd_noise, 1, 0);
		with (oSansInto){ KillerOutlinable = true; };
	};
	if (time == 700){
		Battle_EndTurn();
	}
};
//not javascrpit!
function ScrP1Bout9(){
	static _spe_OSC_flash = function (_time, _bool){ if (other.time == _time) { with (other.Spebut0){ _firable = _bool; }; if (_bool) then other.Spebut1 = instance_create_depth(315, 240, 0, block, { image_yscale : 90, image_xscale : 0.5 }); else if (instance_exists(other.Spebut1)) then instance_destroy(other.Spebut1); }; };
	if (time == 1){
		//show_error("Leave and reset everything...", false);
		//but = instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y() + 40, 0, EnemyNothingSans);
		//but._body_sprite = sprNothingBodyDown;
		//Anim_Create(but, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 320, 120, 30);
		fader.color = c_blue;
		Fader_Fade(0, 1, 20, 10);
		but = instance_create_depth(0, 0, 0, Effect);
		but.EffectMode = EFFECT.VAGUE;
		Anim_Create(but, "lev", 0, 0, 0, 12, 40);
		
	}
	if (time == 40){
		sb(65, 65, 125, 125, 40);
		instance_destroy(Effect);
		//instance_destroy(EnemyNothingSans);
		//audio_play_sound(SndBigBreak, 1, 0);
		Fader_Fade(1, 0, 20);
		EnemyControlCenter._alpha = 0;
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, agent_Ken);
		Player_SetHp(92);
		Player_SetHpMax(92);
		Player_SetLv("");
		Player_SetName("CHARA");
		battle_ui.DrawUIMode = UI_DRAWMODE.NEXTERATALE;
		ScrSetButtonSprite(SprButtonActNexteraTale, SprButtonFightNexteraTale, SprButtonItemNexteraTale, SprButtonItemNexteraTaleEmpty, SprButtonMercyNexteraTale);
	}
	if (time == 50) { 
		ScrEnemySetAction("Down", 20, agent_Ken); 
		Battle_SetSoul(battle_soul_blue);
		with (battle_soul_blue){ impact = true; move = 15; dir = 270; };
		Spebut0 = ScrKenOSCCreate(320, -40, 320, 140, 0, 0, 30, 25, 0, 0);
	};
	_spe_OSC_flash(105, true);
	if (time == 60) {
		ScrGBCreate(-40, 320, 140, 320, -90, 90, 2, 2, 30, 25, 30, 0, SprKenGasterBlaster);
		for(var i = 0; i < (320 - ScrGetboard_left() / 15); i ++;){
			but = Bone_Create(ScrGetboard_left() + (i * 15), ScrGetboard_down() + 10, 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 100, 20, (i * 2));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 100, -90, 20, 20 + (i * 2));
			Anim_Create(but, "vspeed", 0, 0, 0, -6, 30, 40 + (i * 6))
			
			but = Bone_Create((ScrGetboard_right() - 7.5) - (i * 15), ScrGetboard_down() + 10, 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 100, 20, (i * 2));
			Anim_Create(but, "length", ANIM_TWEEN.SINE, ANIM_EASE.IN, 100, -90, 20, 20 + (i * 2));
			Anim_Create(but, "vspeed", 0, 0, 0, -6, 30, 40 + (i * 6))
		}
	}
	for (i = 0; i < 4; i ++) { 
		if (time == 100) { if (battle_soul.x < 310) { Battle_SetSoul(battle_soul_red); }; };
		if (time == 80 + (i * 10)) { 
			but = Bone_Create(250, ScrGetboard_down() + 5, 120, 0, 0, (choose(1, 2)), 0, 0, -6, 1); 
			but.gravity = 0.1;
			but = Bone_Create(390, ScrGetboard_up() - 5, 120, 0, 0, (choose(1, 2)), 0, 0, 8, 1);
			but.gravity_direction = DIR.UP;
			but.gravity = 0.15;
			audio_play_sound(Sndbone, 2, 0);
		};
	};
	if (time == 200) {
		audio_play_sound(SndNoiseLong, 2, 0);
		ScrEnemySetAction("Up", 20, agent_Ken); 
		Anim_Create(camera, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 180, 40);
	};
	for (var i = 0; i < 3; i ++;) { 
		if (time == (160 + (i * 30))){ 
			but = ScrKenOSCCreate(-40, 480, 140, 480, -90, 90, 30, 10, choose(1, 2), 200);
			Anim_Create(but, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, 480, -480, 120, 50);
		};
		if (time == (140) + (i * 20)){ Bone_Create_Right(ScrGetboard_down() + 5, (60 * i), 0, 0, 0, 0, 0, -6, 1); };
		if (time == (210 + (i * 30))){ 
			ScrGBCreate(290 - (i * 40), 520, 290 - (i * 40), 440, 0, 180, 1, 2, 30, 15, 10, 0, SprKenGasterBlaster); 
			ScrGBCreate((350 + (i * 40)), 520, 350 + (i * 40), 440, 0, 180, 1, 2, 30, 15, 10, 0, SprKenGasterBlaster);
		};
	};
	if (time == 280){
		ScrGBCreate(250, -40, 250, 140, 0, 0, 2, 2, 30, 25, 30, 0, SprKenGasterBlaster);
		ScrGBCreate(390, -40, 390, 140, 0, 0, 2, 2, 30, 25, 30, 0, SprKenGasterBlaster);
	}
	_spe_OSC_flash(300, false);
	if (time == 350){
		//TODO: TSC创死他丫的
		Battle_SetSoul(battle_soul_red);
	};
	if (time == 370){
		Bone_Create(320, 460, 120, 0, 4, 0, 0, 0, -6, 1);
		Bone_Create(320, 460, 120, 90, 4, 0, 0, 0, -6, 1);
		with (Spebut0) { _exitable = true; };
		audio_play_sound(SndNoiseLong, 2, 0);
		ScrEnemySetAction("Down", 20, agent_Ken);  
		Anim_Create(camera, "angle", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 180, 180, 40);
		sb(65, 65, 65, 65);
		for (i = 0; i < 5; i++;){
			but = Bone_Create((320 - (i * 10)), ScrGetboard_up() - 5, 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 220, 40, (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN, 220, -200, 50, 40 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 20, 240, 40, 90 + (i * 3));
			Anim_Create(but, "x", ANIM_TWEEN.EXPO, ANIM_EASE.IN, but.x, -but.x + (ScrGetboard_left() + (i * 10)+60), 30, 40 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, 1, 260, -130, 30, (220) + (i * 3));
			Anim_Create(but, "hspeed", 0, 0, 0, 6, 30, (260) + (i * 3));
			
			but = Bone_Create((320 + (i * 10)), ScrGetboard_up() - 5, 0, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "length", ANIM_TWEEN.BOUNCE, ANIM_EASE.OUT, 0, 220, 40, (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.IN, 220, -200, 50, 40 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 20, 240, 40, 90 + (i * 3));
			Anim_Create(but, "x", ANIM_TWEEN.EXPO, ANIM_EASE.IN, but.x, -but.x + (ScrGetboard_right() - (i * 10) - 60), 30, 40 + (i * 3));
			Anim_Create(but, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, but.y, -but.y + (ScrGetboard_down() + 5), 40, 70 + (i * 3));
			Anim_Create(but, "length", ANIM_TWEEN.EXPO, 1, 260, -130, 30, (220) + (i * 3));
			Anim_Create(but, "hspeed", 0, 0, 0, -6, 30, (260) + (i * 3));
		};
	}
	if (time == 375) { ScrGBCreate(320, -40, 320, 140, -180, 0, 1, 2, 30, 25, 30, 0, SprKenGasterBlaster); };
	for (i = 0; i < 6; i ++;){
		if (time == (390 + (i * 30))) {
			but = ScrKenOSCCreate(-40, 440, ScrGetboard_left() - 90, 440, 45, 45, 30, 40, choose(1, 2), 280);
			Anim_Create(but, "y", 1, 2, 440, -1040, 100, 50);
			but = ScrKenOSCCreate(680, 440, ScrGetboard_right() + 90, 440, -45, -45, 30, 40, choose(1, 2), 280);
			Anim_Create(but, "y", 1, 2, 440, -1040, 100, 50);
		};
	};
	if (time >= 420 && (time % 20) == 0 && time <= 510) { Bone_Create((choose(310, 330)), 480, 10, 0, 0, 0, 0, 0, -3, 1); };
	if (time == 580) { ScrGBCreate(-40, 320, 140, 320, 0, 90, 2, 2, 30, 65, 25, 0); };
	if (time == 690) { fader.color = c_blue; Fader_Fade(0, 1, 30); };
	if (time == 730) { 
		battle_ui.DrawUIMode = UI_DRAWMODE.NORMAL;
		Battle_EndTurn();
		ScrSetButtonSprite(SprButtonAct, SprButtonFight, SprButtonItem, SprButtonItemEmpty, SprButtonMercy);
		Player_SetHpMax(PlayerState[0]); Player_SetHp(PlayerState[1]); Player_SetLv(PlayerState[2]);
		Fader_Fade(1, 0, 30);
		EnemyControlCenter._alpha = 1;
		EnemyControlCenter._head_image = 11;
		global.Text_Menu_Info[1, 0] = "Butterscotch P.I.E";
		global.Text_Menu_Info[1, 1] = "01EFFFArmageddon";
		global.Text_Menu_Info[1, 2] = "011010110";
		global.Text_Menu_Info[1, 3] = "HUMAN PIECEEEeeEEEEEE01E";
		global.Text_Menu_Info[1, 4] = "Nodle Blood,";
	};
	//if (time == 300){ _spe_OSC_flash(300) }
}
/*function ScrP1Bout10(){
	if (time == 1){
		sinx = 0;
		Spebut0 = 0;
		EnemyControlCenter._alpha = 0;
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, EnemyCross);
		ScrGBCreate(320, -40, 320, 320, 0, 0, 2, 2, 25, 100, 25, 0, SprCrossGasterBlaster);
	}
}*/
function ScrP1Bout10() {
	window_set_caption(choose("666666666666666666666666", "DIE", "HUMAN BLOOD", "01001001110", "HELP......", "Get ME OUT!", "DYING", "DESPAIRING", "ERRRRRRRRRRRRRRRRRORR", "DEMOON", "1145141919810", "NOTHING TALE", "NOTHING CAN HELP U"));
	if (time == 1){
		Spebut0 = instance_create_depth(0, 0, 0, Effect);
		Spebut0.EffectMode = EFFECT.TEARING;
		Spebut0.lev = 12;
		Spebut0.trring_hei_lev = 12;
		fader.color = 0;
		Fader_Fade(1, 1, 0);
		audio_pause_sound(EnemyControlCenter._now_playing);
		EnemyControlCenter._alpha = 0;
		audio_play_sound(snd_noise, 2, 0);
		game_set_speed(40, gamespeed_fps);
		EnemyControlCenter.bout_error = true;
	}
	if (time == 5){
		instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, EnemyFatal);
	}
	if (time >= 1) { if (instance_exists(Spebut0)) then Spebut0.lev = irandom_range(0, time / 50); };
	static _RePlay = function(_time, _add_time) { if (other.time == _time) then audio_pause_sound(EnemyControlCenter._now_playing); if (other.time == (_time + _add_time)) then audio_resume_sound(EnemyControlCenter._now_playing); };
	_RePlay(120, 20);
	_RePlay(240, 40);
	_RePlay(320, 80);
	if (time == 40){
		Fader_Fade(0, 0, 0);
		audio_play_sound(snd_noise, 2, 0);
		audio_resume_sound(EnemyControlCenter._now_playing);
		sb(65, 65, 65, 65, 0);
		ScrGBCreate(320, -40, 320, 140, 0, 0, 2, 2, 45, 30, 30, 0, SprFatalErrorSansGB);
	}
	for (var i = 0; i < 6; i ++;){
		if (time == 80 + (i * 10)){
			Bone_Create(ScrGetboard_right() + 5, ScrGetboard_down(), 10, 90, 0, 0, 0, -6, -5, 1);
			Bone_Create(ScrGetboard_left() - 5, ScrGetboard_up(), 10, 90, 0, 0, 0, 6, 4, 1);
		}
	}
	if (time == 120) { 
		Bone_Create_Left(ScrGetboard_down() + 5, 60, 0, 0, 0, 0, 0, -6, 1); Bone_Create_Right(ScrGetboard_up() - 5, 60, 0, 0, 0, 0, 0, 6, 1);
		ScrGBCreate(280, -40, 280, 140, 0, 0, 1, 2, 45, 10, 30, 0, SprFatalErrorSansGB);
		ScrGBCreate(360, -40, 360, 140, 0, 0, 1, 2, 45, 10, 30, 0, SprFatalErrorSansGB);
	};
	if (time == 140){
		with (EnemyFatal) { _body_spr = SprFatalErrorSansBodyUpBlueLine; };
		for (i = 0; i < 8; i ++){
			but = Bone_Create(ScrGetboard_left() + (i * 20), ScrGetboard_down() + 30, 30, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "vspeed", 0, 0, 0, -6, 30, (i * 3));
		}
		audio_play_sound(snd_noise, 1, 0)
	}
	if (time == 160){
		with (EnemyFatal) { _body_image = 1; };
		for (i = 0; i < 8; i ++){
			but = Bone_Create(ScrGetboard_right() + (i * 20) + 10, ScrGetboard_down() + 30, 30, 90, 0, 0, 0, 0, 0, 1);
			Anim_Create(but, "vspeed", 0, 0, 0, -6, 30, (i * 3));
		}
	}
	if (time == 170){
		but = instance_create_depth(0, 0, 0, FatalErrorLine);
		but._repeat_num = 12;
	}
	//if (time =)
	if (time == 200) { game_set_speed(20, gamespeed_fps); };
	if (time == 350) { Player_SetHp(30); Player_SetHpMax(56); instance_destroy(FatalErrorLine) audio_play_sound(snd_noise, 2, 0); with (EnemyFatal) { _body_spr = SprFatalErrorSansBody; }; };
	if (time == 370) { ScrGBCreate(320, 140, 320, 140, 0, 0, 3, 3, 0, 25, 60, 0, SprFatalErrorSansGB); };
	if (time == 400) { EnemyFatal._body_spr = SprFatalErrorSansBodyActive; ScrGBCreate(360, 140, 360, 140, 0, 0, 2, 2, 0, 25, 60, 0, SprFatalErrorSansGB); ScrGBCreate(280, 140, 280, 140, 0, 0, 2, 2, 0, 25, 60, 0, SprFatalErrorSansGB); };
	if (time >= 400) { Player_Heal(99); Player_SetLv("0101101111", "0001101110", "EERROORR", "WE ARE IN0111101101", "6666666666666666666"); };
	if (time == 400) then game_set_speed(10, gamespeed_fps);  
	if (time >= 500) { audio_replay_sound(EnemyControlCenter._create_stream, 2, 0); battle_soul.moveable = false; with (Effect) { lev = 0; }; with (EnemyFatal) { _wiggle = false; }; };
	if (time == 550) { show_error("10010101 10010001&11100110 10001000 10010001 11100011&10000000 10000010 11100011&10000000 10000010&11100011 10000000 10000010 00000000&  00000000 00000000 00000000 00000000", false) };
};
//止笔于: 2023.9.30。参与制作: 宋弦司