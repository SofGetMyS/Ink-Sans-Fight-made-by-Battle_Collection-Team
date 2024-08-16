/// @desc
if (!ScrCreatable) then exit;
//Anim_Uninit
ds_list_destroy(global._gmu_anim_list);
var key=ds_map_find_first(global._gmu_anim_data);
while(!is_undefined(key)){
	ds_map_destroy(global._gmu_anim_data[?key]);
	if (ds_exists(global._gmu_anim_data, ds_type_map))
		ds_map_delete(global._gmu_anim_data,key);
	key=ds_map_find_first(global._gmu_anim_data);
}
if (ds_exists(global._gmu_anim_data, ds_type_map))
	ds_map_destroy(global._gmu_anim_data);

//Dialog_Uninit
ds_queue_destroy(global._dialog_queue);

//Flag_Uninit
var map=global._flag;

while(!ds_map_empty(map)){
	var key=ds_map_find_first(map);
	var map_f=ds_map_find_value(map,key);
	ds_map_destroy(map_f);
	ds_map_delete(map,key);
}
ds_map_destroy(map);

//Encounter_Uninit
var map=global._encounter;
while(!ds_map_empty(map)){
	var key=ds_map_find_first(map);
	var map_e=ds_map_find_value(map,key);
	ds_map_destroy(map_e);
	ds_map_delete(map,key);
}
ds_map_destroy(map);
	
//Input_Uninit
var map=global._gmu_input;
repeat(ds_map_size(map)){
	var key=ds_map_find_first(map);
	Input_Unbind(key);
}
ds_map_destroy(map);
ds_map_destroy(global._gmu_input_state_override);

// if (audio_exists(MainBgm)) then audio_destroy_stream(MainBgm);//TODO:BgmUninit

// 释放字体
if (font_exists(FontCNDialog)) then font_delete(FontCNDialog);
if (font_exists(FontCNMenu)) then font_delete(FontCNMenu);
