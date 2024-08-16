///@desc Menu End
if (Battle_GetMenuChoiceButton() == 1){
	switch (Battle_GetMenuChoiceAction()){
		case 0:
			Dialog_Add(global.Text_Menu_Info[0, 1]);
			break;
	}
}
battle.Restore_Data();