/// @desc 基本·模式
if (x > 640) then instance_destroy(); else if (x < 0) then instance_destroy();
if (y > 480) then instance_destroy(); else if (y < 0) then instance_destroy();	
switch (mode) {
	case 1:
		direction = image_angle;
		break;
};