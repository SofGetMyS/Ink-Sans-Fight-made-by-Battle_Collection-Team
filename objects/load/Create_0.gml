//Depth_Init
Depth = ds_list_create();
ds_list_add(Depth, -100, -200, -300, -400, -500, -600, -700, -800, -900, -1000);

var LoadMode = function() { static _result = -1; _result ++; return _result; }
GotoMode = LoadMode();
if (GotoMode >= 1) { event_perform(ev_alarm, 2); Encounter_Start(0); Controlfunc = true; };
window_set_caption("Ink Sans Fight Made by Battle_Collection-Team");