if (GpuBlendMode == true){
	gpu_set_blendmode(bm_add);
}
StarGlobalTimer ++;
if (object_exists(Bout) && (StarGlobalTimer % StarGlobalTimerTarget) == 0){
	if (part_type_exists(Bout.Star_Effect_Part_Type) && part_system_exists(Bout.Star_Effect_Part_System) && PartEffectSwitch){
		part_particles_create(Bout.Star_Effect_Part_System, x, y, Bout.Star_Effect_Part_Type, 1);
	}
}
if (object_exists(agent_FS) && instance_exists(agent_FS)){
	sprite_index = SprStormStar;
	image_blend = #790599;
	StarEffectCanCr = false;
}

gpu_set_blendmode(bm_normal);
draw_self();