battle_soul.x=battle_board.x-battle_board.left-5+40;
battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;

if (Input_IsPressed(INPUT.UP)){
	if (_menu_choice_enemy > 0){
		_menu_choice_enemy--;
		audio_play_sound(snd_menu_switch, 0, 0);
	}
}else if (Input_IsPressed(INPUT.DOWN)){
	if (_menu_choice_enemy < 1){
		_menu_choice_enemy++;
		audio_play_sound(snd_menu_switch, 0, 0);
	}
}
switch (_menu_choice_enemy){
	case 0:
		EnemyControlCenter.UIFightBoard_index = 1;
		global.ATKBOTTLE = false;
		break;
	case 1:
		EnemyControlCenter.UIFightBoard_index = 2;
		global.ATKBOTTLE = true;
		break;
}