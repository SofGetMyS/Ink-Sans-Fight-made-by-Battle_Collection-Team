/// @desc Espe board Effect
vEffect = 1;
instance_create_depth(x, y, 0, oBoardEspe);
if (EspeExitBoardEff) then alarm[0] = ((_espe_board_move_t * 2) + _espe_board_move_t);
Anim_Create(id, "_shake_lev", 0, 0, 0, _tar_sha_lev, _espe_board_move_t);
Anim_Create(id, "_shake_lev", 0, 0, _tar_sha_lev, -_tar_sha_lev, (_espe_board_move_t * 2), _espe_board_move_t);

Anim_Create(id, "_tar_xx", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _tar_xx, _tar_xxx - _tar_xx, (_espe_board_move_t * 2) + _espe_board_move_t);
Anim_Create(id, "_tar_yy", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _tar_yy, _tar_yyy - _tar_yy, (_espe_board_move_t * 2) + _espe_board_move_t);
Anim_Create(id, "_tar_espeboard_xx", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _tar_espeboard_xx, _tar_espeboard_xxx - _tar_espeboard_xx, (_espe_board_move_t * 2) + _espe_board_move_t);
Anim_Create(id, "_tar_espeboard_yy", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, _tar_espeboard_yy, _tar_espeboard_yyy - _tar_espeboard_yy, (_espe_board_move_t * 2) + _espe_board_move_t);