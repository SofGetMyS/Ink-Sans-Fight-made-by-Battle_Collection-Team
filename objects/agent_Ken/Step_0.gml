if (_wiggle){
	_wiggle_sin = (_wiggle_sin + 1);
	_head_x = (sin((_wiggle_sin / 12)) * 2);
	_head_y = (sin((_wiggle_sin / 6)) * 1.7);
	
	_body_x = (sin((_wiggle_sin / 12)) * 2);
	_body_y = (sin((_wiggle_sin / 6)) * 1.5);
}else{
	_wiggle_sin = 0;
}
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
						_body_sprite = asset_get_index("SprKenBody" + GoState);
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
						_head_image = 10;
						_body_image = 0;
						break;
					case 4: _head_image = 11; break;
					case 6: _head_image = 10; _body_image = 1; break;
					case 8: _head_image = 11; break;
					case 10:
						_body_image = 2;
						_head_image = OriginalHeadIndex;
						break;
					case 17:
						alarm[2] = ActionEndTime;
						break;
				}
			}
		}else{
			State = "undefined";
			GoState = "undefined";
			//_body_sprite = sprNothingBody;
			
			//Someable = degtorad(sin(_wiggle_sin)) * pi / 180;
		}
	break;
}