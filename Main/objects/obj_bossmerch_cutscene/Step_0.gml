if state = 0{
	t++;
	if t = 50{
		instance_create_depth(x,y,-100000,obj_txt_bossmerch_cutscene);	
	}
	if t = 100 state = 1;
}
