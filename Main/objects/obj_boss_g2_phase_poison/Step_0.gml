
if (state = 0) {
	t++;
	if t = 50
	{
		state = 1;
		if num > 0
		{
			if horiz = 1
			{
				switch(dir)
				{
					case -1:
						var poisl = instance_create_depth(x-16,y,depth,obj_boss_g2_phase_poison)
						poisl.num = num-1;				
						poisl.dir = -1;				
						break;		
					case 1:
						var poisr = instance_create_depth(x+16,y,depth,obj_boss_g2_phase_poison)
						poisr.num = num-1;
						poisr.dir = 1;
						break;			
				}
			}
			if horiz = 0
			{				
				var poisdown = instance_create_depth(x,y+16,depth,obj_boss_g2_phase_poison)
				poisdown.num = num-1;
				poisdown.horiz = 0;
			}
		} 
	}
}


if (state = 2) {
    t1++;
	if t1= 10 instance_destroy();
}