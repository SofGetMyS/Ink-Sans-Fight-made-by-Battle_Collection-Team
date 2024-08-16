start = false;
time = 0;
xxx = 0;
dirr = 0;
depth = load.Depth[|9];
xsin = 0;
Star_Effect_Part_System = -1;
Star_Effect_Part_Type = -1;
StarMoveSiner = 0;
global.PartDustS = -1;
global.PartDustT = -1;
PlayerState = 0;

P3BoutList = 0;

BoutNum = 13;
CanChoiceCol = false;
//show_error("TEST", false);
ScythePartSys = -1;

EspeStickSysPart = -1;

DrawLine_able = true;
function ScrP3StartBout(){
	if (time == 20){
		EnemyControlCenter._head_image = 44;
	}
	if (time == 40){
		audio_play_sound(Snd_fly, 0, 0);
		for (var i = 0; i < 8; i++;){
			with (EnemyControlCenter){
				INST[i] = instance_create_depth((40 + (i * 80)), 30, 0, Bottle);
				INST[i].image_blend = Col_Bottle[i];
				with (INST[i]){
					y = 240;
					x = 320;
					Anim_Create(id, "y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, y, 30-y, 30);
					Anim_Create(id, "x", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, x, (40 + (i * 80))-x, 30);
				}
			}
		}
		Battle_SetInkBodySprite(SprInkBodyNoBottle);
	}
	if (time == 80){
		Battle_EndTurn();
	}
}
//重山TODO: I love that shit