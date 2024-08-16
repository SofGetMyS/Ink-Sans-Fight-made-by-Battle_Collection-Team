time ++;
var _x = (x + lengthdir_x(0, image_angle)), _y = (y + lengthdir_y(0, image_angle));
if (time >= _tar_time && (!_exitable)){
	direction = (image_angle - 90);
	_wait_fire_t -= 1;
	if (!_wait_fire_t && _firable) { 
		if ((!instance_exists(but))){ but = instance_create_depth(_x, _y, 0, oKenOSCAttack); };
		image_index = (_col + 1);
	} else {
		if (instance_exists(but)) then instance_destroy(but);
		image_index = 0;
	};
} else if (_exitable) { _firable = false; Anim_Create(id, "speed", 0, 0, 0, -6, 30); _exitable = false; };

//if (instance_exists(but)) then with (but) { x = (x + lengthdir_x(0, image_angle)); y = (y + lengthdir_y(0, image_angle)); mode = other._col; image_angle = other.image_angle; };