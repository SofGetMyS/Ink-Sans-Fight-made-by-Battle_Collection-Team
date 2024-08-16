/// @desc 播放BGM(默认)
//TODO: Dark你别乱动我代码了啊（恼
if (array_length(global.bgm_list)){	event_perform(ev_alarm, 2); _now_playing = audio_play_sound(_create_stream, 1, true); };
