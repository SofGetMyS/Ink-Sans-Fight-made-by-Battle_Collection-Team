/// @desc
LoadLogo_xscale0 = 0;
LoadLogo_xscale1 = 0;
LoadLogo_xscale2 = 0;
alpha = 0;
surRectangleYsc = 360;

Controlfunc = true;

for (var i = 0; i < 3; i++){
	Anim_Create(id, "LoadLogo_xscale" + string(i), ANIM_TWEEN.QUINT, ANIM_EASE.OUT, 0, 2, 20, (20 + ((i - 1) * 10)));
}
Anim_Create(id, "surRectangleYsc", ANIM_TWEEN.SINE, ANIM_EASE.OUT, surRectangleYsc, -surRectangleYsc, 30, 30);
audio_play_sound(snd_sfx_logo, 0, 0, 0.1);
DrawableTeamLogo = true;

alarm[1] = 15;