/// @description Insert description here
// You can write your code in this editor
depth = load.Depth[|8] - 1;
sprite_index = startM;
image_xscale = 0;
image_yscale = 0;
mode = 0;
alarm[0] = 1;
SwapInitX = 0;
SwapInitXstart = 0;
SwapInitYstart = 0;
MurderOutPosX = 0;

scale = 102;
alpha_0 = 0;
alpha_1 = 0;
alpha_2 = 0;
DeathRadius = 0;

PartCreateTime = 0;

for (var i = 0; i < 4; i++) {
	var VARNAME = ("KillerScaleXPos" + string(i));
	variable_instance_set(id, VARNAME, 0);
}
KillerScaleYPos = 0;
KillerScaleYPosX = 0;

KillerAlpha = 1;
KillerEndPosY = 0;

KillerOutlinable = true;