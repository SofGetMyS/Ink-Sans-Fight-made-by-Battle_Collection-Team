function ScrBottleBreakCreateCir(_x, _y, _color, _Add_Radius, _EndTime){
	_inst = instance_create_depth(_x, _y, 0, oP3CircleCreate);
	_inst.color = _color;
	_inst.radiusAdd = _Add_Radius;
	_inst.EndTime = _EndTime;
	
	return _inst;
}