/// @desc 基本·模式
image_index += 0.2;
if (x > 800) then instance_destroy(); else if (x < -200) then instance_destroy();
if (y > 520) then instance_destroy(); else if (y < -200) then instance_destroy();

if (Lenable){
	x = LenX + lengthdir_x(Len, Dir);
	y = LenY + lengthdir_y(Len, Dir);
	
	switch (LenMove){ case -1: Len -= LenMoveReal; break; case 1: Len += LenMoveReal; break; }
	switch (DirMove){ case -1: Dir -= DirMoveReal; break; case 1: Dir += DirMoveReal; break; }
}
if (!image_alpha) then instance_destroy();

switch (Mode){
	case 1: if (instance_exists(Bout)) then y += (sin(Bout.time / _shakerange)); break;
}