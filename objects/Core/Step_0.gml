var proc=0;
//TODO: TML你最起码给AnimStep写个注释啊草
repeat(ds_list_size(global._gmu_anim_list)){
	var key=global._gmu_anim_list[|proc];
	var map=global._gmu_anim_data[?key];
	if(instance_exists(map[?ANIM_DATA.TARGET]) || map[?ANIM_DATA.TARGET]==global){
		if(map[?ANIM_DATA.DELAY]<=0){
			if(map[?ANIM_DATA.TIME] < map[?ANIM_DATA.DURATION]){
				map[?ANIM_DATA.TIME]+=1;
				var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE]*Anim_GetValue(map[?ANIM_DATA.TWEEN],map[?ANIM_DATA.EASE],map[?ANIM_DATA.TIME]/map[?ANIM_DATA.DURATION],map[?ANIM_DATA.ARG_0],map[?ANIM_DATA.ARG_1]);
				if(map[?ANIM_DATA.TARGET]!=global){
					variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
				}else{
					variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
				}
			}else{
				var value=map[?ANIM_DATA.START]+map[?ANIM_DATA.CHANGE];
				if(map[?ANIM_DATA.TARGET]!=global){
					variable_instance_set(map[?ANIM_DATA.TARGET],map[?ANIM_DATA.VAR_NAME],value);
				}else{
					variable_global_set(map[?ANIM_DATA.VAR_NAME],value);
				}
				ds_map_destroy(map);
				ds_map_delete(global._gmu_anim_data,key);
				ds_list_delete(global._gmu_anim_list,proc);
				proc-=1;
			}
		}else{
			map[?ANIM_DATA.DELAY]-=1;
		}
	}else{
		ds_map_destroy(map);
		ds_map_delete(global._gmu_anim_data,key);
		ds_list_delete(global._gmu_anim_list,proc);
		proc-=1;
	}
	proc+=1;
}
var proc=0;
repeat(6){
	var audio=BGM_GetID(proc);
	if(audio_exists(audio)){
		var start=global._bgm_loop_start[proc];
		var endt=global._bgm_loop_end[proc];
		if(start>=0 && endt>=0){
			var pos=audio_sound_get_track_position(audio);
			if(pos>=endt){
				audio_sound_set_track_position(audio,start+(pos-endt));
			}
		}
	}
	proc+=1;
}

if(_time>=60){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.TIME,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}

//Console_SetStatusText(0,);
//Console_SetStatusText(1,);
//Console_SetStatusText(2,);
//if (global.debug == true){
	/*if (Input_IsHeld(INPUT.UP)){
		Pitch[1] += 0.05;
	}else if (Input_IsHeld(INPUT.DOWN)){
		Pitch[1] -= 0.05;
	}else if (Input_IsPressed(INPUT.MENU)){
		show_message(Pitch[1]);
	}*/
	
//}

//Console_Step();

