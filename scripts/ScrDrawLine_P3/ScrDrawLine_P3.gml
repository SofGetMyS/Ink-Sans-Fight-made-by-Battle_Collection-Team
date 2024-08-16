///@arg Move_x0
///@arg Move_x1
///@arg color
function ScrDrawLine_P3(){
	var _inst = instance_create_depth(0, 0, 0, oP3Line);
	for (var i = 0; i < 2; i++;){
		_inst.GetMove_Pos[i] = argument[i];
	}
	_inst.color = argument[2];
	
	return _inst;
}