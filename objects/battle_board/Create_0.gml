depth=load.Depth[|5];

_surface=-1;

x=BATTLE_BOARD.X;
y=BATTLE_BOARD.Y;

up=BATTLE_BOARD.UP;
down=BATTLE_BOARD.DOWN;
left=BATTLE_BOARD.LEFT;
right=BATTLE_BOARD.RIGHT;

angle=0;
alpha=1;
alpha_bg=1;
alpha_frame=1;
color=c_white;
color_bg=c_black;
color_frame=c_white;
thickness_frame=5;
thickness_frame_collision=5;
enable_frame=true;

_inst_frame_up=instance_create_depth(0,0,0,block);
_inst_frame_left=instance_create_depth(0,0,0,block);
_inst_frame_down=instance_create_depth(0,0,0,block);
_inst_frame_right=instance_create_depth(0,0,0,block);
_inst_frame_up.sprite_index=spr_pixel;
_inst_frame_left.sprite_index=spr_pixel;
_inst_frame_down.sprite_index=spr_pixel;
_inst_frame_right.sprite_index=spr_pixel;

_point_x=0;
_point_y=0;

_angle=0;
_bg_x=0;
_bg_y=0;
_bg_width=0;
_bg_height=0;
_surface_x=0;
_surface_y=0;
_surface_width=0;
_surface_height=0;
_frame_up_x=0;
_frame_up_y=0;
_frame_up_width=0;
_frame_up_height=0;
_frame_left_x=0;
_frame_left_y=0;
_frame_left_width=0;
_frame_left_height=0;
_frame_down_x=0;
_frame_down_y=0;
_frame_down_width=0;
_frame_down_height=0;
_frame_right_x=0;
_frame_right_y=0;
_frame_right_width=0;
_frame_right_height=0;
SoulLimt = true;

Angle = 0;

vEffect = 0;
_espe_board_move_t = 30;
_tar_sha_lev = 18;
_shake_lev = 0;
EspeExitBoardEff = false;
_tar_xx = 0;
_tar_yy = 0;
_tar_xxx = -80;
_tar_yyy = 0;
_tar_espeboard_xx = 0; //Orgin Pos
_tar_espeboard_yy = 0;
_tar_espeboard_xxx = 80; //target Pos
_tar_espeboard_yyy = 0;
//instance_create_depth(0, 0, 0, ScreenEffect);
//instance_create_depth(0, 0, 0, objWorley);