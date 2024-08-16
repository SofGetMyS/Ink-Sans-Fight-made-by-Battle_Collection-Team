/// @description Insert description here
// You can write your code in this editor
depth = load.Depth[|4];
GetChoose = 0;
//GetChooseing = 0;
function ScrInit(){
	ItemTextChoice = array_create(8, Item_GetName(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM)));
	
	for(var i = 1; i < 8;i ++){
		ItemTextChoice[i] = Item_GetName(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+i));
	}
	ITEM = instance_create_depth(0, 0, 0, Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM));
	Iteminterpretation = array_create(8, ITEM.Info);
	instance_destroy(ITEM);
	
	for(var i = 1; i < 8;i ++){
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+i) != -1){
			ITEM = instance_create_depth(0, 0, 0, Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM + i));
			Iteminterpretation[i] = ITEM.Info;
			instance_destroy(ITEM);
		}
	}
	
	sb(75, 65, 310, 310, 10);
	return true;
}

self.ScrInit();

Y = 0;
Anim_Create(id, "Y", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 0, 40, 20);






