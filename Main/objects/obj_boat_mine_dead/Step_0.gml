/// @description Insert description here
// You can write your code in this editor
b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y-16,1,obj_sfx_explosion);
				instance_create_depth(x,y-16,1,obj_boat_mine_part);
				instance_create_depth(x,y-16,1,obj_boat_mine_part);
				instance_create_depth(x,y-16,1,obj_boat_mine_part);	
                instance_create_depth(x,y-16,1,obj_boat_mine_part);	
				break;
		case 5: instance_destroy();break;
	}