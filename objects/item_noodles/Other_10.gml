Dialog_Add("* You ate the " + _name + ".{sleep 20}&* Your recovered 90 HP.");
Dialog_Start();

audio_play_sound(snd_item_heal, 1, 0);
Player_Heal(90);

event_inherited();
Item_Remove(_item_slot);