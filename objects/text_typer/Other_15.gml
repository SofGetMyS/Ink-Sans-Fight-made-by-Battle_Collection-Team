///@desc Group & Macro
ds_map_add(_map_macro,"true",true);
ds_map_add(_map_macro,"false",false);

ds_map_add(_map_macro,"DIR.UP",DIR.UP);
ds_map_add(_map_macro,"DIR.DOWN",DIR.DOWN);
ds_map_add(_map_macro,"DIR.LEFT",DIR.LEFT);
ds_map_add(_map_macro,"DIR.RIGHT",DIR.RIGHT);

ds_map_add(_map_macro,"FONT.DIALOG",0);
ds_map_add(_map_macro,"FONT.MENU",1);
ds_map_add(_map_macro,"FONT.BATTLE",2);
//ds_map_add(_map_macro,"FONT.BATTLE-CN",3);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);

_group_font[0,0]=font_determination_mono;
_group_font_scale_x[0,0]=1;
_group_font_scale_y[0,0]=1;
_group_font_space_x[0,0]=0;
_group_font[0,1]=font_determination_mono;
_group_font_scale_x[0,1]=1;
_group_font_scale_y[0,1]=1;
_group_font_space_x[0,1]=0;
_group_font_space_y[0]=0;

_group_font[1,0]=font_determination_sans;
_group_font_scale_x[1,0]=1;
_group_font_scale_y[1,0]=1;
_group_font_space_x[1,0]=0;
_group_font[1,1]=font_determination_sans;
_group_font_scale_x[1,1]=1;
_group_font_scale_y[1,1]=1;
_group_font_space_x[1,1]=0;
_group_font_space_y[1]=0;

_group_font[2,0]=font_dotumche;
_group_font_scale_x[2,0]=1;
_group_font_scale_y[2,0]=1;
_group_font_space_x[2,0]=0;
_group_font[2,1]=font_dotumche;
_group_font_scale_x[2,1]=1;
_group_font_scale_y[2,1]=1;
_group_font_space_x[2,1]=0;
_group_font_space_y[2]=0;

_group_font[3,0]=font_comic_sans;
_group_font_scale_x[3,0]=1;
_group_font_scale_y[3,0]=1;
_group_font_space_x[3,0]=0;
_group_font[3,1]=FontCNDialog;
_group_font_scale_x[3,1]=1;
_group_font_scale_y[3,1]=1;
_group_font_space_x[3,1]=0;
_group_font_space_y[3]=2;

_group_font[4,0]=font_tahoma;
_group_font_scale_x[4,0]=1;
_group_font_scale_y[4,0]=1;
_group_font_space_x[4,0]=0;
_group_font[4,1]=font_tahoma;
_group_font_scale_x[4,1]=1;
_group_font_scale_y[4,1]=1;
_group_font_space_x[4,1]=0;
_group_font_space_y[4]=0;


_group_font[5,0]=font_determination_mono;
_group_font_scale_x[5,0]=1;
_group_font_scale_y[5,0]=1;
_group_font_space_x[5,0]=0;
_group_font[5,1]=FontCNMenu;
_group_font_scale_x[5,1]=1;
_group_font_scale_y[5,1]=1;
_group_font_space_x[5,1]=0;
_group_font_space_y[5]=0;
//draw_sprite_ext()

_group_voice[0,0]=snd_text_voice_default;
_group_voice[1,0]=snd_text_voice_typer;
_group_voice[2,0]=snd_text_voice_sans;

_group_face[0]=face;