function ScrKenOSCCreate(_x, _y, _tar_x, _tar_y, _sta_ang, _tar_ang, _tar_tim, _wait_t, _color, _end_time){
	var _inst = instance_create_depth(_x, _y, 0, oKenOSC,
		{ _target_x : _tar_x, _target_y : _tar_y, image_angle : _sta_ang, _target_angle : _tar_ang, _tar_time : _tar_tim, _wait_fire_t : _wait_t, _col : _color }
	);
	with (_inst) { alarm[0] = _end_time; alarm[1] = (_end_time >= 1 ? (_end_time + 40) : 0); };
	return _inst;
}