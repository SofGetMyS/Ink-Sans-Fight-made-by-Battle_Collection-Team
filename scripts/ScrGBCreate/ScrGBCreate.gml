///@desc				 Sans的GasterBlaster攻击
///@arg {Real}			 x
///@arg {Real}			 y
///@arg {Real}			 xTar
///@arg {Real}			 yTar
///@arg {Real}			 Angsta
///@arg {Real}			 AngTar
///@arg {Real}			 Scalex
///@arg {Real}			 Scaley
///@arg {Real}			 TargetTime
///@arg {Real}			 Firetime
///@arg {Real}			 Dur
///@arg {Real}			 Col
///@arg {Asset.GMSprite} Spr*
function ScrGBCreate(_x, _y, _tar_x, _tar_y, _create_ang, _tar_ang, _scale_x, _scale_y, _tar_pos_time, _wait_fire_time, _fire_sost_time, _col, _spr){
	var _but = (instance_create_depth(_x, _y, 0, GasterBlaster));
	with (_but){
		x_target = _tar_x;
		y_target = _tar_y;
		image_angle = _create_ang;
		AngleTarget = _tar_ang;
		Scale_x = _scale_x;
		Scale_y = _scale_y;
		TargetTime = _tar_pos_time;
		FireTime = _wait_fire_time;
		FireDurTime = 0;
		Dur = (_fire_sost_time);
		Colour = _col;
		sprite_index = ((is_undefined(_spr)) ? SprInkGasterBlaster : _spr);
	};
	return (_but);
}