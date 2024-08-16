///@desc Turn Preparation Start
var Text = "{font 3}{voice 2}";
//if (bout <= array_length(global.Text_Enemy)){
if (Phase != 3.5){
	ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[Phase, bout]);
}
//}
if (Phase == 1){
	switch (bout){
		case 0:
			//ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[1, 0]);
			break;
		case 1:
			sb(65, 65, 65, 65);
			//ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[1, 1]);
			battle_board.color_frame = c_red;
			break;
		case 2:
			GB_Part_S = part_system_create();
			part_system_depth(GB_Part_S, load.Depth[|9]);
			GB_Part_T = part_type_create();
			part_type_color1(GB_Part_T, c_blue);
			part_type_alpha2(GB_Part_T, 1, 0);
			part_type_direction(GB_Part_T, 0, 360, 1, 0.1);
			part_type_speed(GB_Part_T, 6, 12, -0.1, 0);
			part_type_shape(GB_Part_T, pt_shape_star);
			part_type_life(GB_Part_T, 30, 60);
			part_type_scale(GB_Part_T, 0.2, 0.2);
			part_type_orientation(GB_Part_T, 0, 360, 10, 0, 0);
			Star_Effect_Part_System = part_system_create();
			part_system_depth(Star_Effect_Part_System, load.Depth[|8]);
			Star_Effect_Part_Type = part_type_create();
			part_type_alpha2(Star_Effect_Part_Type, 1, 0);
			part_type_sprite(Star_Effect_Part_Type, SprStormStar_Effect, 0, 0, 0);
			part_type_life(Star_Effect_Part_Type, 20, 40);
			part_type_direction(Star_Effect_Part_Type, 0, 360, 0, 0);
			part_type_orientation(Star_Effect_Part_Type, 0, 360, 1, 0, 0);
			part_type_speed(Star_Effect_Part_Type, 4, 6, -0.05, 0);
			sb(65, 65, 65, 65);
			//ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[1, 2]);
			
			//nstance_create_depth(0, 0, 0, StormStar);
			
			battle_board.color_frame = c_blue;
			break;
		case 3:
			
			//part get in storm star bullet.remember               ------------by SofGetMyS
			//OK
			//?
			//Outer turn ok?
			//ok
			sb(45, 45, 165, 165, 20);
			//ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[1, 3]);
			break;
		case 4:
			sb(65, 65, 65, 65);
			//ScrEnemyDialog(420, 120, 0, Text + global.Text_Enemy[1, 4]);
			break;
		case 5:
			global.PartDustS = part_system_create();
			part_system_depth(global.PartDustS, load.Depth[|9]);
			global.PartDustT = part_type_create();
			part_type_color1(global.PartDustT, c_purple);
			part_type_shape(global.PartDustT, pt_shape_cloud);
			part_type_alpha3(global.PartDustT, 0, 1, 0);
			part_type_size(global.PartDustT, 4, 6, -0.05, 0);
			part_type_life(global.PartDustT, 90, 90)
			part_type_direction(global.PartDustT, 0, 360, 0, 0);
			part_type_speed(global.PartDustT, 2, 2, 0, 0);
			break;
		case 6:
			ScythePartSys = part_system_create();
			part_system_depth(ScythePartSys, load.Depth[|9] - 1);
			sb(65, 65, 65, 65);
			break;
		case 7:
			break;
		case 8:
			sb(15, 15, 30, 30);
			break;
		case 9:
		case 10:
		case 11:
			break;
	}
}else if (Phase == 2){
	switch (bout){
		case 0:
			EspeStickSysPart = part_system_create();
			part_system_depth(EspeStickSysPart, load.Depth[|9] - 5);
			EspeStickSysPart2 = part_system_create();
			part_system_depth(EspeStickSysPart2, load.Depth[|9] - 15);
			break;
	};
}else if (Phase == 3){
	switch (bout){
		case 0:
			sb(65, 65, 65, 65, 20);
			break;
	}
}else if (Phase == 3.5){
	if (global.P3End){
		ScrEnemyDialog(420, 120, 0, Text + "Thank you for&your playing!");
		Phase = 4;
	}
}