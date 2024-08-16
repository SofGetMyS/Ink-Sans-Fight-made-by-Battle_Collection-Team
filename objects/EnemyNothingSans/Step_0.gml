switch (State){
	case "Ready":
		_wiggle = 0;
		_wiggle_sin = 0;
		/////////////////////
		State = GoState;
		break;
	case GoState:
		if (GoState != "undefined"){
			if (_body_sprite == -1){
				State = "undefined";
				GoState = "undefined";
				_body_sprite = sprNothingBody;
			}else{
				Action_Time ++;
				switch (Action_Time){
					case 1:
						DestAnimACT();
						_body_sprite = asset_get_index("sprNothingBody" + GoState);
						OriginalHeadIndex = _head_image;
						switch (GoState){
							case "Up":
								Anim_Create(id, "_body_y", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, 5, 5);
								Anim_Create(id, "_body_y", ANIM_TWEEN.BACK, ANIM_EASE.OUT, -4, 5, 5, 5);
								break;
							case "Down":
								Anim_Create(id, "_body_y", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, -1, 5, 5);
								Anim_Create(id, "_body_y", ANIM_TWEEN.BACK, ANIM_EASE.OUT, 4, -5, 5, 5);
								break;
							case "Left":
								Anim_Create(id, "_body_x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -5, 5);
								Anim_Create(id, "_body_x", ANIM_TWEEN.BACK, ANIM_EASE.OUT, -4, 5, 5, 5);
								break;
							case "Right":
								Anim_Create(id, "_body_x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, -1, 5, 5);
								Anim_Create(id, "_body_x", ANIM_TWEEN.BACK, ANIM_EASE.OUT, 4, -5, 5, 5);
								break;
						}
						_head_image = 2;
						_body_image = 0;
						break;
					case 4:
						_body_image = 1;
						break;
					case 5:
						_body_image = 2;
						_head_image = OriginalHeadIndex;
						break;
					case 12:
						alarm[0] = ActionEndTime;
						break;
				}
			}
		}else{
			State = "undefined";
			GoState = "undefined";
			//_body_sprite = sprNothingBody;
			
			//Someable = degtorad(sin(wiggle_Sin)) * pi / 180;
		}
	break;
}
