///@arg Spr
function Battle_SetInkBodySprite(){
	var ENEMY = EnemyControlCenter;
	
	ENEMY.GoInkSpriteBody = argument[0];
	ENEMY._body_sprite = argument[0];
	return EnemyControlCenter;
}