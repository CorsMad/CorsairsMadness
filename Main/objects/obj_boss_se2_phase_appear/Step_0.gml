if state = 1
{
	t++;
	switch(t)
	{
	    case 100:   image_index = 1;image_alpha = 0.7;break;   
	    case 110:   image_index = 2;image_alpha = 0.9;break;   
	    case 120:   
	        instance_create_depth(x,y,-300,obj_boss_se2_phase1);
	        instance_destroy();
	}
}