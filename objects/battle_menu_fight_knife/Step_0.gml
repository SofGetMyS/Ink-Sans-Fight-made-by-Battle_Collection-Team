if(_input_acceptable){
	var LEFT = (_dir==DIR.LEFT&&_aim_x<=battle_board.x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2);
	var RIGHT = (_dir==DIR.RIGHT&&_aim_x>=battle_board.x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2);
	if (global.ATKBOTTLE == false){
		if(LEFT || RIGHT){
			Battle_SetMenuFightDamage(-1);
			Battle_EndMenuFightAim();
			_input_acceptable=false;
		}
	}else{
		if (LEFT){
			Anim_Destroy(id,"_aim_x");
			Anim_Create(id,"_aim_x",0,0,_aim_x,battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim),90);
			_dir = DIR.RIGHT;
		}
		if (RIGHT){
			Anim_Destroy(id,"_aim_x");
			Anim_Create(id,"_aim_x",0,0,_aim_x,-(battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)),90);
			_dir = DIR.LEFT;
		}
	}
	
	if(Input_IsPressed(INPUT.CONFIRM)&&_input_acceptable){
		Anim_Destroy(id,"_aim_x");
		alarm[0]=1;
		
		var ATK=Player_GetAtkTotal();
		var DEF=Battle_GetEnemyDEF(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy()));
		var DISTANCE=point_distance(x,y,_aim_x,y);
		var WIDTH=sprite_get_width(spr_battle_menu_fight_bg)/2;
		var damage=ATK-DEF+random(2);
		if(DISTANCE<=12){
			damage*=2.2;
		}else{
			damage*=(1-DISTANCE/WIDTH)*2;
		}
		damage=round(damage);
		if(damage<=0){
			damage=1;
		}
		
		Battle_SetMenuFightDamage(damage);
		Battle_SetMenuFightAnimTime(50);
		Battle_SetMenuFightDamageTime(45);
		Battle_EndMenuFightAim();
		_input_acceptable=false;
	}
}