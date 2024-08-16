// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
///@arg x
///@arg y
///@arg dep
///@arg text
function ScrEnemyDialog(argument0, argument1, argument2, argument3){
	var _Ins;
	
	_Ins = instance_create_depth(argument0, argument1, argument2, battle_dialog_enemy)
	_Ins.text = argument3
}