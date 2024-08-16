///@desc Menu Switch
switch (Phase){
	default:
		if (!global.ATKBOTTLE){
			if (!(Battle_GetMenuFightDamage() == -1)){
				if (Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
				
				}
				if (Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
					it = instance_create_depth(320, 100, 0, battle_damage);
					it.damage = -1;
					it.MissDamage_Sprite = spr_battle_damage_noeffect;
				}
			}
		}else{
			for (var i = 0; i < 8; i++;){
				if (global.x_attack[i] == true){
					if (instance_exists(INST[i])){
						it = instance_create_depth((40 + (i * 80)), 60, 0, battle_damage);
						it.damage = 1;
						it.bar_hp_max = 5;
						it.bar_hp_target = INST[i].hp-1;
						it.bar_hp_original = INST[i].hp;
						INST[i].hp -= 1;
					}else{
						it = instance_create_depth((40 + (i * 80)), 60, 0, battle_damage);
						it.damage = -1;
						it.MissDamage_Sprite = spr_battle_damage_noeffect;
					}
				}
			}
		}
		break;
	case 1:
	case 2:
		if (!(Battle_GetMenuFightDamage() == -1)){
			if (Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
				switch choose(0, 1){
					case 0:
						var Miss = choose(420, 220);
						Anim_Create(id, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, x, -x + Miss, 30);
						Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, Miss, -Miss+320, 25, 30);
						break;
					case 1:
						Anim_Destroy(id, "_alpha");
						Anim_Create(id, "_alpha", 0, 0, 1, -1, 10);
						audio_play_sound(SndDisappear, 1, 0);
						break;
				}
			}
			if (Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
				it = instance_create_depth(320, 100, 0, battle_damage);
				it.damage = -1;
				Anim_Create(id, "_alpha", 0, 0, _alpha, 1-_alpha, 20);
			}
		}
		break;
}