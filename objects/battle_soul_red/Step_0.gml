event_inherited();

//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal();
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*_spd){
		MoveUP();MoveDown();MoveLeft();MoveRight();
	}
}
if (instance_exists(EnemyDeath)){
	if (_spd == 5) then image_alpha = 0.5; else image_alpha = 1;
}