depth=load.Depth[|8];
image_speed=0;

follow_board=false;
_inv=0;

Outer_draw_glow = false;
Outer_draw_size = 0;

function MoveUP(){
	if(Input_IsHeld(INPUT.UP)){
		if(!position_meeting(x,y-sprite_height/2,block)){
			y-=0.1;
		}
	}
	return true;
}
function MoveDown(){
	if(Input_IsHeld(INPUT.DOWN)){
		if(!position_meeting(x,y+sprite_height/2,block)){
			y+=0.1;
		}
	}
	return true;
}
function MoveLeft(){
	if(Input_IsHeld(INPUT.LEFT)){
		if(!position_meeting(x-sprite_width/2,y,block)){
			x-=0.1;
		}
	}
	return true;
}
function MoveRight(){
	if(Input_IsHeld(INPUT.RIGHT)){
		if(!position_meeting(x+sprite_width/2,y,block)){
			x+=0.1;
		}
	}
	return true;
}