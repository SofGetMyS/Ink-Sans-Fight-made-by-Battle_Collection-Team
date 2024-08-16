but[0] = instance_create_depth(battle_board.x-battle_board.left-5+68, battle_board.y-battle_board.up-5+20, -1000, text_typer);
with (EnemyControlCenter){
	other.but[0].text = "{shadow true}{gui false}{instant true}{scale 2}{font 0}"+Battle_GetEnemyName(_enemy_slot);
}
but[1] = instance_create_depth(battle_board.x-battle_board.left-5+68, battle_board.y-battle_board.up-5+50, -1000, text_typer);
but[1].text = "{shadow true}{gui false}{instant true}{scale 2}{font 0}* Color Dyes";

_menu_choice_enemy = 0;