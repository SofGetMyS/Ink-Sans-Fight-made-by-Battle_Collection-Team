var ENCOUNTER=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.ENCOUNTER);
_enemy_object[0]=Encounter_GetEnemy(ENCOUNTER,0);
_enemy_object[1]=Encounter_GetEnemy(ENCOUNTER,1);
_enemy_object[2]=Encounter_GetEnemy(ENCOUNTER,2);
//敌人实例
_enemy[0]=noone;
_enemy[1]=noone;
_enemy[2]=noone;
//敌人名字
_enemy_name[0]="";
_enemy_name[1]="";
_enemy_name[2]="";
//敌人可饶恕状态
_enemy_spareable[0]=false;
_enemy_spareable[1]=false;
_enemy_spareable[2]=false;
//敌人行动列表
_enemy_action_number[0]=0;
_enemy_action_number[1]=0;
_enemy_action_number[2]=0;
_enemy_action_name[0,0]="";
_enemy_action_name[0,1]="";
_enemy_action_name[0,2]="";
_enemy_action_name[0,3]="";
_enemy_action_name[0,4]="";
_enemy_action_name[0,5]="";
_enemy_action_name[1,0]="";
_enemy_action_name[1,1]="";
_enemy_action_name[1,2]="";
_enemy_action_name[1,3]="";
_enemy_action_name[1,4]="";
_enemy_action_name[1,5]="";
_enemy_action_name[2,0]="";
_enemy_action_name[2,1]="";
_enemy_action_name[2,2]="";
_enemy_action_name[2,3]="";
_enemy_action_name[2,4]="";
_enemy_action_name[2,5]="";
//敌人中心位置
_enemy_center_pos_x[0]=0;
_enemy_center_pos_y[0]=0;
_enemy_center_pos_x[1]=0;
_enemy_center_pos_y[1]=0;
_enemy_center_pos_x[2]=0;
_enemy_center_pos_y[2]=0;
//敌人属性
_enemy_def[0]=0;
_enemy_def[1]=0;
_enemy_def[2]=0;

//状态
_state=-1;
_state_next=-1;
//菜单
_menu=-1;
_menu_choice_button=0;
_menu_choice_enemy=0;
_menu_choice_action=0;
_menu_choice_item=0;
_menu_choice_item_first=0;
_menu_choice_mercy=0;
_menu_choice_mercy_override=false;
_menu_choice_mercy_override_number=1;
_menu_choice_mercy_override_name[0]="";
_menu_choice_mercy_override_name[1]="";
_menu_choice_mercy_override_name[2]="";
_menu_fleeable=false;
_menu_mercy_flee_enabled=Encounter_IsMenuMercyFleeEnabled(ENCOUNTER);
_menu_dialog=Encounter_GetMenuDialog(ENCOUNTER);

_menu_fight_damage=0;
_menu_fight_anim_time=0;
_menu_fight_damage_time=0;

_menu_item_used_last=-1;

_turn_number=0;
_turn_info=ds_map_create();

_dialog[0]=noone;
_dialog[1]=noone;
_dialog_auto_end=true;
_dialog_enemy_auto_end=true;

_reward_gold=0;
_reward_exp=0;

_player_temp_atk=0;
_player_temp_def=0;
_player_temp_spd=0;
_player_temp_inv=0;

global.hx = 320;
global.hy = 320;
global.Enemy = [];

globalvar bout, bout_executing;
bout = 0;
global.time = 0;
ColorDyes_switch = false;
global.board_color[0] = 0;
global.board_color[1] = 0;
global.board_color[2] = 0;

/////////////////////////////////////
//只读变量
global.ATKBOTTLE = true;
bout_executing = false;
Getagenty = 200;
Getagentx = 320;
Someable = true;
but = noone;
but1 = noone;
but2 = noone;
//load resource
for (var i = 0; i < 8; i ++;){
	global.x_attack[i] = false;
};
 function Data(_num, _bool){
	global.x_attack[_num] = _bool;
	
	return true;
};
 function Restore_Data(){
	for (var i = 0; i < 8; i ++;){
		Data(i, false);
	}
	return true;
};
function Change_Data(_num){
	Restore_Data();
	Data(_num, true);
	
	return true;
};
ScrEnemyDialog_Load("en");