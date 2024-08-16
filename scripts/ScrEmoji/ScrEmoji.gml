// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
///@arg Act
///@arg num
function ScrEmoji(argument0, argument1){
	if (argument0 == ENEMY_EMOJI.FACE)
	    return (("{variable `EnemyControlCenter` `_head_image` " + string(argument1)) + "}");
	if (argument0 == ENEMY_EMOJI.BODY)
		return (("{variable `EnemyControlCenter` `_body_image` " + string(argument1)) + "}");
	if (argument0 == ENEMY_EMOJI.LEG)
	    return (("{variable `EnemyControlCenter` `LegImage` " + string(argument1)) + "}");
	return;
}