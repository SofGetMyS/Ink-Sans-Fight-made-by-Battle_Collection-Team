depth=load.Depth[|0];

box_slot=0;
_state=-1;
_choice_mode=0;
_choice_item=0;

_prefix="{shadow false}{scale 2}{font 1}{instant true}{gui true}{depth "+string(load.Depth[|1])+"}";

_inst_inventory=noone;
_inst_box=noone;
_inst_item_inventory=noone;
_inst_item_box=noone;
_inst_finish=noone;

if(instance_exists(char_player)){
	char_player._moveable_box=false;
}