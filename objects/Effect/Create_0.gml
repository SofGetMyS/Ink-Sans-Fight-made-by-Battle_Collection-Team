//1.5
Scale = 3.5
_alpha = 1;
Endable = false;
ColorDrawLightDark = c_black;
Anim_Create(id, "Scale", 0, 0, 3.5, -2, 20);

enum EFFECT{
	LIGHT,
	VAGUE,
	TEARING,
	RIPPLE_TEARING
}
lev = 0;
sureng = true;
trring_hei_lev = 1;
EffectMode = EFFECT.LIGHT;

tearings_y = 0;
band_num = 16; // 屏幕上要出现多少个横条
band_height = room_height / band_num;
tearings_x_offset = 32; //你要怎样水平移动横条
tearing_speed = 4; // 修改这里可以加速/减速