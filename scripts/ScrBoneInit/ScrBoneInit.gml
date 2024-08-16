///@arg x
///@arg y
///@arg length
///@arg ang
///@arg rot
///@arg col
///@arg outBoard
///@arg hs
///@arg vs
///@arg a_d
///@arg *dest
///@arg *obj
function Bone_Create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11){
	if ((is_undefined(argument11))) then argument11 = SansBone;
	if ((is_undefined(argument10))) then argument10 = -1;
	var object = argument11;
	
	with (instance_create_depth(argument0, argument1, 0, object))
	{
		length = argument2;
		angle = argument3;
		rotate = argument4;
		color = argument5;
		out = argument6;
		hspeed = argument7;
		vspeed = argument8;
		auto_destroy = argument9;
		duration = argument10;
		return id;
	}
}

///@arg x
///@arg length
///@arg ang
///@arg rot
///@arg col
///@arg outBoard
///@arg hs
///@arg vs
///@arg a_d
///@arg *dest
///@arg *obj
function Bone_Create_Top(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	return Bone_Create(argument0, ScrGetboard_up(), argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);
}

///@arg x
///@arg length
///@arg ang
///@arg rot
///@arg col
///@arg outBoard
///@arg hs
///@arg vs
///@arg a_d
///@arg *dest
///@arg *obj
function Bone_Create_Bottom(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	return Bone_Create(argument0, ScrGetboard_down(), argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);
}

///@arg y
///@arg length
///@arg ang
///@arg rot
///@arg col
///@arg outBoard
///@arg hs
///@arg vs
///@arg a_d
///@arg *dest
///@arg *obj
function Bone_Create_Left(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	return Bone_Create(ScrGetboard_left(), argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);
}

///@arg y
///@arg length
///@arg ang
///@arg rot
///@arg col
///@arg outBoard
///@arg hs
///@arg vs
///@arg a_d
///@arg *dest
///@arg *obj
function Bone_Create_Right(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10){
	return Bone_Create(ScrGetboard_right(), argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);
}