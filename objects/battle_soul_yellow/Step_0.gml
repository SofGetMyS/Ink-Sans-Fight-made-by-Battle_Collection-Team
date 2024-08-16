event_inherited();

//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal();
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		MoveUP();
		MoveDown();
		MoveLeft();
		MoveRight();
	}
}

if (Input_IsPressed(INPUT.CONFIRM) && instance_number(battle_soul_yellow_bullet) < 3){//Bullet_Shoot_Limit
	but = instance_create_depth(x, y, 0, battle_soul_yellow_bullet);
	but.vspeed = -12;
	but.depth = load.Depth[|9];
	audio_replay_sound(SndSoulFire, 1, 0);
}
if (Input_IsHeld(INPUT.CONFIRM)){
	ShootHoldTimer++;
}else{
	ShadowScaleTarget = 0;
	ShadowScaleWiggleSin = 0;
	if (ShootHoldTimer > 50){
		with (instance_create_depth(x, y, 0, oBattleSoulYellowBigBullet)){
			vspeed = -12;
			depth = load.Depth[|9];
		}
		CircleAlpha = 0;
	}else if (ShootHoldTimer < 50){
		if (CircleAlpha > 0){
			CircleAlpha -= 0.05;
			if (len < 30){
				len ++;
			}
			if (dir < 180){
				dir += 5;
			}
		}else{
			len = 30;
			dir = 180;
		}
		if (ShootHoldTimer > 40){
			CircleAlpha = 0;
		}
	}
	ShootHoldTimer = 0;
}