if state = 0
{
	t++;
	if t = 100 
	{
		
		instance_create_depth(144,176,depth,obj_boss_l2_stand);
		instance_create_depth(352,176,depth,obj_boss_l2_stand);
		instance_create_depth(x,y,depth,obj_boss_l2_phase3);
		instance_destroy();
	}
}