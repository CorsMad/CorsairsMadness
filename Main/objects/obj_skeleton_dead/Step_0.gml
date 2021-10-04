b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y-16,1,obj_sfx_explosion);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);		
				break;
		case 5: instance_destroy();break;
	}