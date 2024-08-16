function ScrP2Bout0(){
	if (time == 1) { sb(65, 65, 65, 65, 20); Anim_Create(EnemyControlCenter, "x", 0, 0, 320, -220, 30); instance_create_depth(Scr_Getagent_x(), Scr_Getagent_y(), 0, agent_Espe); };
	if (time == 60) { with (battle_board) event_user(1); };
	if (time == 160) { instance_create_depth(-40, 240, 0, oEspeStick, { _tar_x : 120, _tar_y : 320, _tar_ang : (image_angle + 180) }); };
}
function ScrP2Bout1(){
	if (time == 1){
		
	}
}