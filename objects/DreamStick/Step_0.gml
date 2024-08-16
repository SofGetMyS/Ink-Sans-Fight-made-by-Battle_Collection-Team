image_angle += rotate;

for(i = 0; i < length; i ++){
	oldPosX[i] = 0;
	oldPosY[i] = 0;
}
//Step，记录坐标（建议自己理解）
for(i = length; i >= 1; i --){//记录坐标
	oldPosX[i] = oldPosX[i - 1];
	oldPosY[i] = oldPosY[i - 1];
}
oldPosX[0] = x;
oldPosY[0] = y;