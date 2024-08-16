///@desc Anim
if(Battle_GetMenuFightDamage()>=0){
	if (!global.ATKBOTTLE){
		var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
		var X=Battle_GetEnemyCenterPosX(ENEMY);
		var Y=Battle_GetEnemyCenterPosY(ENEMY);
	}else{
		Y = 30;
		if (_aim_x <= 100){
			X = 40;
			battle.Change_Data(0);
		}else if (_aim_x <= 180 && _aim_x > 100){
			X = 120;
			battle.Change_Data(1);
		}else if (_aim_x <= 245 && _aim_x > 180){
			X = 200;
			battle.Change_Data(2);
		}else if (_aim_x <= 320 && _aim_x > 245){
			X = 280;
			battle.Change_Data(3);
		}else if (_aim_x <= 400 && _aim_x > 320){
			X = 360;
			battle.Change_Data(4);
		}else if (_aim_x <= 460 && _aim_x > 400){
			X = 440;
			battle.Change_Data(5);
		}else if (_aim_x <= 535 && _aim_x > 460){
			X = 520;
			battle.Change_Data(6);
		}else{
			X = 600;
			battle.Change_Data(7);
		}
	}
	instance_create_depth(X,Y,0,battle_menu_fight_anim_knife);
}