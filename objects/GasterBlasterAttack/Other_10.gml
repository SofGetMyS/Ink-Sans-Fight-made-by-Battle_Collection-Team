/// @description Soul Hurt
event_inherited();
var HURT =((sprite_index == SprDeathGasterBlasterBeam) ? 20 : 10);
if (Colour == 0){
	Player_Hurt(HURT);
}
if (Colour == 1){
	if ((!((battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious))) && (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down))){
		Player_Hurt(HURT);
	}
}
if (Colour == 2){
	if ((battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious) || (!((keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down))))){
		Player_Hurt(HURT);
	}
}









