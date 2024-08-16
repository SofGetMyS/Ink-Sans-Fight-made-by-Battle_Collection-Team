var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
	draw_self();
}

gpu_set_blendmode(bm_add);
draw_sprite_ext(Sglow, 0, x, y, Outer_draw_size, Outer_draw_size, 0, image_blend, 1);
gpu_set_blendmode(bm_normal);