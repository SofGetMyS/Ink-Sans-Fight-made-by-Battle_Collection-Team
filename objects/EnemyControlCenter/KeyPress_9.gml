/// @desc 切换BGM

if ((array_length(global.bgm_list)) < 2 || Phase >= 3 || bout_error) then exit;

//啊？？？？？？羽化和Runtime的报错根本不一样，一个要写string，一个要写Asset.GMSound，属实是...
if (audio_exists(_create_stream)) then audio_destroy_stream(_create_stream);

_music_flush ++;
if ((_music_flush + 1) > (array_length(global.bgm_list))) then _music_flush = 0;

audio_stop_sound(_now_playing);
event_perform(ev_alarm, 2);
_now_playing = (audio_play_sound(_create_stream, 1, true));

// 保存
var _fid = (file_text_open_write("r7185q")); // RC4: U2FsdGVkX1/SUQIHEW4QX2rZBIvAE/r7185q
file_text_write_real(_fid, _music_flush);
file_text_close(_fid);
//buffer_compress()