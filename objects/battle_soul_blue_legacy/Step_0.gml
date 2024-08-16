event_inherited();

//移动
if (Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		switch (Gravity_dir){
			case DIR.UP:
			case DIR.DOWN:
				MoveLeft();
				MoveRight();
				break;
			case DIR.LEFT:
			case DIR.RIGHT:
				MoveUP();
				MoveDown();
				break;
		}
	}
}
switch (Gravity_dir){
	case DIR.DOWN:
		vsp += 0.01;
		if (!place_meeting(x, y+vsp, battle_board._inst_frame_down)){
			Gravity_fall_spd = vsp;
			while (!place_meeting(x, y+Gravity_fall_spd, battle_board._inst_frame_down)){
				y += vsp;
			}
		}
		break;
}