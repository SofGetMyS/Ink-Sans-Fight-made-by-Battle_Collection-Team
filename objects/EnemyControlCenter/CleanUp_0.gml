/// @description Insert description here
// You can write your code in this editor
ds_list_destroy(Boutlist);
ds_map_destroy(OriginalState);
part_system_destroy(Part_S);
part_type_destroy(Part_T);

if (audio_exists(_create_stream)) then audio_destroy_stream(_create_stream);