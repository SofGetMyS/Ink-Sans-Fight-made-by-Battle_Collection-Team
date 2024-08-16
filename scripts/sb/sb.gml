///@desc       BoardSizeSet(center Pos by boardPosX and boardPosY)
///@arg {real} up
///@arg {real} down
///@arg {real} left
///@arg {real} right
///@arg {real} time*
function sb(up, down, left, right, time) {
	if((is_undefined(time))) then time = 25;

	Anim_Create(battle_board,"up",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.up,up-battle_board.up,time);
	Anim_Create(battle_board,"down",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.down,down-battle_board.down,time);
	Anim_Create(battle_board,"left",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.left,left-battle_board.left,time);
	Anim_Create(battle_board,"right",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,battle_board.right,right-battle_board.right,time);
	
	return battle_board;
}
