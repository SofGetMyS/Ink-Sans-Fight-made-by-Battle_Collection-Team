var ang = 0;
for (var i = 0; i < (Createnum + 1); i++;){
	Bone[i] = Bone_Create(0, 0, 0, 0, lenDir_move, 0, Outable, 0, 0, 0, dest);
	Bone[i].lenable = true;
	Bone[i].len_dir = ang;
	Bone[i].angle = ang;
	ang += (360/Createnum);
	Bone[i].len_dir_move = lenDir_move;
}