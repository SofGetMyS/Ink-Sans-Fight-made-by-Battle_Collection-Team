if (IsWarn == true){
	if (WarnBlend == c_red) then WarnBlend = c_yellow; else WarnBlend = c_red;
	audio_play_sound(SndWarn, 1, 0, 2);
	alarm[0] = 3;
}