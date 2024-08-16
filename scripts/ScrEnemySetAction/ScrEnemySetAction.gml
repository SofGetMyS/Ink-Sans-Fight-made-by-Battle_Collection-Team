function ScrEnemySetAction(_Action, _EndActionTime, _Type){
	with (_Type){
		_body_sprite = _org_body_spr;
		Action_Time = 0;
		_wiggle = true;
		_head_image = OriginalHeadIndex;
	
		State = "Ready";
		GoState = _Action;
		ActionEndTime = _EndActionTime;
	}
	
	return true;
}