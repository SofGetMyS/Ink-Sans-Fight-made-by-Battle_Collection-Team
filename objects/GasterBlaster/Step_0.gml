/// @description Constitute
image_xscale = Scale_x;
image_yscale = Scale_y;
time++;
if (time == 1)
{
	Anim_Create(id, "x", ANIM_TWEEN.QUART, ANIM_EASE.OUT, x, x_target-x, TargetTime);
	Anim_Create(id, "y", ANIM_TWEEN.QUART, ANIM_EASE.OUT, y, y_target-y, TargetTime);
	Anim_Create(id, "image_angle", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, image_angle, AngleTarget - image_angle, TargetTime - 10);
}
direction = (image_angle - 90);
if (time > TargetTime)
{
	FireTime--;
	if (FireTime < 0)
	{
		FireDurTime--;
		ImageTime++;
		switch (ImageTime)//图帧变换
		{
			case 1:
				image_index = 1;
				break;
			case 3:
				image_index = 2;
				break;
			case 4:
				image_index = 3;
				audio_stop_sound(snd_gb_release);
				audio_play_sound(snd_gb_release, 0, 0);
				if (Scale_x >= 2 && Scale_y >= 2){
					Camera_Shake(2, 2, 1, 1);
				}
				ins = instance_create_depth(x, y, 0, GasterBlasterAttack)//生成激光
				with (ins){
					Colour = other.Colour;
					image_angle = other.AngleTarget;
					Anim_Create(id, "image_xscale", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, other.image_xscale*2, 10);
					//Anim_Create(id, "image_alpha", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0.3, 0.7, 5);
					switch (other.sprite_index) {
						default: sprite_index = SprGasterBlasterBeam break;
						case SprInkGasterBlaster: sprite_index = SprInkGasterBlasterBeam break;
						case SprKenGasterBlaster: sprite_index = SprKenGasterBlasterBeam break;
					}
					//sprite_index = (other.sprite_index == SprInkGasterBlaster) ? SprInkGasterBlasterBeam : SprGasterBlasterBeam;
					
					Fell_blend = (other.sprite_index == spr_fell_gb) ? true : false;
					Outerblend = (other.sprite_index == newSprOuterGB) ? true : false;
					DeathBlend = (other.sprite_index == SprDeathGasterBlaster) ? true : false;
				}
				break;
			case 5:
				image_index = 4;
				break;
			case 6:
				image_index = 5;
				//alarm[0] = 1;
				alarm[2] = (40 + ((FireTime + FireDurTime) + Dur));
				break;
		}
		if (FireDurTime < 0)
		{
			Dur --;
			if (Dur < 0)
			{
				with (ins)
					event_user(2);//删除激光
			}
			if (ImageTime > 4)
			{
				if (instance_exists(ins))
				{
					//激光跟踪gb
					ins.x = x;
					ins.y = y;
				}
			}
			//gb遗憾离场
			speed -= 0.5;
		}
	}
}










