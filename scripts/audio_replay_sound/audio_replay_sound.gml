/// @desc									  重新播放音乐
/// @arg {Id.Sound|Asset.GMSound}  _index	  有关“声音”的资产
/// @arg {Real}					   _proiority 重新定义优先级
/// @arg {Bool}					   _loops	  重新定义是否重复播放
function audio_replay_sound(_index, _proiority, _loops) {
	audio_stop_sound(_index);
	audio_play_sound(_index, _proiority, _loops);
	/*
	audio_pause_sound(_index);
	audio_sound_set_track_position(_index, 0);
	audio_resume_sound(_index);
	*/
};
//......呃呃事实上我在埋伏笔