/// @desc
instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,H2O_Yin);
instance_create_depth(0,0,0,closed_captions);
instance_create_depth(0, 0, 0, InkP3BlendSystem);

application_surface_draw_enable(false);

//Anim_Init
//GMU_Anim v3.0.0
global._gmu_anim_list=ds_list_create();
global._gmu_anim_data=ds_map_create();
global._gmu_anim_id=-10;

enum ANIM_TWEEN{
	LINEAR,
	SINE,
	QUAD,
	CUBIC,
	QUART,
	QUINT,
	EXPO,
	CIRC,
	BACK,
	ELASTIC,
	BOUNCE,
	BALL
};
enum ANIM_EASE{
	IN,
	OUT,
	IN_OUT
};
enum ANIM_DATA{
	TARGET,
	VAR_NAME,
	TWEEN,
	EASE,
	START,
	CHANGE,
	DURATION,
	DELAY,
	ARG_0,
	ARG_1,
	TIME
};

//Input_Init
//GMU_Input v1.1.0
global._gmu_input=ds_map_create();
global._gmu_input_state_override=ds_map_create();
enum INPUT_TYPE{
	KEYBOARD,
	GAMEPAD,
	MOUSE
};
enum INPUT_STATE{
	NULL,
	HELD,
	PRESSED,
	RELEASED
};

Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

//Flag_init
global._flag=ds_map_create();

Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.NAME,"CHARA");
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.LV,20);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX,99);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,99);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+1,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+2,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+3,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+4,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+5,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+6,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+7,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_WEAPON,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_ARMOR,-1);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ATK,10);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.DEF,10);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.SPD,2);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.INV,40);
Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,battle_menu_fight_knife);

Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,-1);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,noone);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,-1);

Item_SetWeapon(item_stick);
Item_SetArmor(item_bandage);
//Item_Add(item_tml);
	
//Encounter_Init
global._encounter=ds_map_create();
Encounter_Set(0,noone,EnemyControlCenter,noone,"",-1,false);
	
//BGM_Init
var proc=0;
repeat(6){
	global._bgm_id[proc]=-1;
	global._bgm_audio[proc]=-1;
	global._bgm_loop_start[proc]=-1;
	global._bgm_loop_end[proc]=-1;
	proc+=1;
}
	
//Dialog_Init
global._dialog_queue=ds_queue_create();

global.Enemy = "Sans";
game_set_speed(60, gamespeed_fps);

but = instance_create_depth(0, 0, 0, Core);
//but.persistent = true

Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,room);
room_persistent=false;

ScrCreatable = true;