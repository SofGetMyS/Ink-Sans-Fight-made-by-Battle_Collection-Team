///@desc Turn Start
start = true;
Battle_SetTurnTime(-1);
bout_executing = true;
var Enemy = EnemyControlCenter;
if (Phase == 1){
	switch (bout){
		case 0:
			Anim_Create(Enemy, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, Enemy.x, -Enemy.x+170, 30);
			break;
		case 1:
			Anim_Create(Enemy, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, Enemy.x, -Enemy.x+470, 30);
			break;
		case 2:
			Anim_Create(Enemy, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, Enemy.x, -Enemy.x+470, 30);
			break;
		case 4:
			with (Enemy){
				Anim_Destroy(id, "_alpha");
				Anim_Create(id, "_alpha", 0, 0, _alpha, -alpha, 20);
			}
			break;
		case 9:
			PlayerState = [Player_GetHpMax(), Player_GetHp(), Player_GetLv()];
			break;
	}
}else if (Phase == 3){
	
}