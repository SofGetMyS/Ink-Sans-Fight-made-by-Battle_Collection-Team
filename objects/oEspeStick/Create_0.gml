image_speed = 0;
_spr_part = sprite_index;
image_xscale = 2;
image_yscale = 2;
_canPlayIndex = false;
depth = load.Depth[|9]-10;
time = 0;
_part_eff_scale = 1.7;

EspeStickTypPart = part_type_create();
part_type_life(EspeStickTypPart, 10, 10);
part_type_alpha2(EspeStickTypPart, 1, 0);
part_type_scale(EspeStickTypPart, 2, 2);

EspeStickTypPartEffBlue = part_type_create();
part_type_life(EspeStickTypPartEffBlue, 20, 20);
part_type_scale(EspeStickTypPartEffBlue, _part_eff_scale, _part_eff_scale);
part_type_sprite(EspeStickTypPartEffBlue, SprEspeStickAquaEff, true, true, false);

EspeStickTypPartEffOran = part_type_create();
part_type_life(EspeStickTypPartEffOran, 20, 20);
part_type_scale(EspeStickTypPartEffOran, _part_eff_scale, _part_eff_scale);
part_type_sprite(EspeStickTypPartEffOran, SprEspeStickOrangeEff, true, true, false);
//+++ ORIGINAL SERIALISATION SUCCESSFUL LOAD AND LINK TIME: 792.534ms//

Anim_Create(id, "x", 1, ANIM_EASE.OUT, x, _tar_x-x, 20);
Anim_Create(id, "y", 1, ANIM_EASE.OUT, y, _tar_y-y, 20);
Anim_Create(id, "image_angle", 1, ANIM_EASE.OUT, image_angle, _tar_ang-image_angle, 20);
alarm[0] = 20;

event_perform(ev_alarm, 1);
//_dir = 0;