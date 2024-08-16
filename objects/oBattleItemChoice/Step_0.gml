/// @description Insert description here
// You can write your code in this editor
if(Battle_GetMenu()!=BATTLE_MENU.ITEM){
	instance_destroy();
}
Battle_SetMenuChoiceItem(GetChoose);

if (keyboard_check_pressed(vk_down)){
	if (GetChoose < (Item_GetNumber() - 1)){
		GetChoose += 1;
		audio_play_sound(snd_menu_switch, 0, false);
		Anim_Destroy(id)
		Y = 0;
		Anim_Create(id, "Y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 40, 20);
	}
}
if (keyboard_check_pressed(vk_up)){
	if (GetChoose > 0){
		GetChoose -= 1;
		Anim_Destroy(id)
		Y = 0;
		Anim_Create(id, "Y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 40, 20);
		audio_play_sound(snd_menu_switch, 0, false);
	}
}

//self.ItemDrawReMake();






