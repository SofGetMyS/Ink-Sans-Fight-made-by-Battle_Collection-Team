function ScrLoadBoard(){
	instance_create_depth(0,0,0,battle_board);
}
function ScrGetboard_left(){return (battle_board.x - battle_board.left);}
function ScrGetboard_right(){return (battle_board.x + battle_board.right);}
function ScrGetboard_up(){return (battle_board.x - battle_board.up);}
function ScrGetboard_down(){return (battle_board.x + battle_board.down);}