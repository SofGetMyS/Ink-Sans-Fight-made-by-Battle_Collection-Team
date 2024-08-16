
/// @desc                        
/// @arg {Constant.ENEMY_ACTION} GetAct
/// @arg {Real}                  EndActAlarm
function ScrEnemyAction() {
	with (EnemyControlCenter){
		_act_time = 0;
		GetAct = argument0;
		action = ENEMY_ACTION.READINESS;
		//
		alarm[1] = argument1;
	};
};
