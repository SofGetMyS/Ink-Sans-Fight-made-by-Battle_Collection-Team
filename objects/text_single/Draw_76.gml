switch(effect){
	case -1:
		_offset_time++;
		if ((_offset_time % irandom_range(120, 160)) == 0){
			_offset_x=random_range(-2,2);
			_offset_y=random_range(-2,2);
		}else{
			_offset_x=0;
			_offset_y=0;
		}
		break;
		
	case 0:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		_effect_shook=!_effect_shook;
		break;
		
	case 1:
		_offset_x=0;
		_offset_y=0;
		break;
}