///@arg turn_obj/inst
function Battle_IsTurnValid() {
	var TURN=argument[0];

	if(!object_exists(TURN)&&instance_exists(TURN)){
		TURN=TURN.object_index;
	}
	if(object_exists(TURN)){
		return (TURN==Bout || Object_GetBaseParent(TURN)==Bout);
	}else{
		return false;
	}


}
