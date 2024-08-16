if (wiggle){
	wiggle_Sin += 0.5;
	Body_x = sin(wiggle_Sin / 6);
	Body_y = sin(wiggle_Sin / 3);
}else{
	wiggle_Sin = 0;
	Body_x = 0;
	Body_y = 0;
}
if (!instance_exists(Gun_Aim)){
	event_perform(ev_alarm, 0);
}