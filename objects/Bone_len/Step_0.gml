for (var i = 0; i < (Createnum + 1); i++;){
	if (instance_exists(Bone[i])){
		Bone[i].len_x = x;
		Bone[i].len_y = y;
		Bone[i].length = length;
		Bone[i].len = len;
	}
}