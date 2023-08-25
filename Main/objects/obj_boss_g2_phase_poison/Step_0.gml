
if (state = 0) {
    if image_alpha<1 image_alpha+=0.2;
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
				var poisdown = instance_create_depth(x,y,depth,obj_boss_g2_phase_poison)
				poisdown.num = num-1;
				poisdown.horiz = 0;
			}
		} 
	}
}

if state = 1
{
    t++;
    if t >=95 image_alpha-=0.1;
    if t = 100 instance_destroy();
}
if (state = 2) {
    t1++;
    if t1 >=95 image_alpha-=0.1;
	if t1= 10 instance_destroy();
}