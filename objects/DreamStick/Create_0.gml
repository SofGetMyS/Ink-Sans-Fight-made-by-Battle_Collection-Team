depth = load.Depth[|9];
image_speed = 0;
image_xscale = 2;
image_yscale = 2;

rotate = 3;
Anim_Create(id, "rotate", 0, 0, 3, -3, 60);

dir = 0;

length=15;//拖尾长度，单位xx：帧
for(var i = 0; i < length; i ++){
	oldPosX[i]=0;
	oldPosY[i]=0;
}