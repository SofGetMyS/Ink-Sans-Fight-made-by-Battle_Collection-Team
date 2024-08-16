/// @desc 判断Col类型进行伤害
if (!global.debug) then Battle_CallSoulEventHurt();
if (battle_soul._inv <= 0){
	var _condition = (!((battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious))) && ((Input_IsHeld(INPUT.LEFT)) || (Input_IsHeld(INPUT.RIGHT)) || (Input_IsHeld(INPUT.UP)) || (Input_IsHeld(INPUT.DOWN)));
	if(color == 0 || color == 3 || color == 4) { Player_Hurt(10); };
	if(color == 1 && _condition){ Player_Hurt(10); };
	_condition = (battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious) || (!(((Input_IsHeld(INPUT.LEFT)) || (Input_IsHeld(INPUT.RIGHT)) || (Input_IsHeld(INPUT.UP)) || (Input_IsHeld(INPUT.DOWN)))));
	if(color == 2 && _condition){ Player_Hurt(10); };
}