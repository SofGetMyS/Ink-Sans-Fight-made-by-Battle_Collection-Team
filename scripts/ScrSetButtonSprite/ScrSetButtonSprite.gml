function ScrSetButtonSprite(_spr_act, _spr_fight, _spr_item, _spr_item_empty, _spr_mercy){
	battle_button_act.sprite_index = _spr_act;
	battle_button_fight.sprite_index = _spr_fight;
	battle_button_item.spr_index = _spr_item;
	battle_button_item.spr_index_empty = _spr_item_empty;
	battle_button_mercy.sprite_index = _spr_mercy;
	
	return true;
}