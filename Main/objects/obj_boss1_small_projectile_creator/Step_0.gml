/// @description Insert description here
// You can write your code in this editor
t++;

if instance_exists(obj_boss1_phase2)
{
	x = obj_boss1_phase2.x;
	y = obj_boss1_phase2.y+6;
}

if instance_exists(obj_boss1_phase3)
{
	x = obj_boss1_phase3.x;
	y = obj_boss1_phase3.y+6;
}
if instance_exists(obj_boss1e_phase2)
{
	x = obj_boss1e_phase2.x;
	y = obj_boss1e_phase2.y+6;
}

if instance_exists(obj_boss1e_phase3)
{
	x = obj_boss1e_phase3.x;
	y = obj_boss1e_phase3.y+6;
}

if stage = 1
{
	switch(t)
	{
		case 1:		instance_create_depth(x-21,y-8,depth-1,obj_boss1_small_pre_projectile_l);break;
		case 25:	instance_create_depth(x-21,y-8,depth-1,obj_boss1_small_pre_projectile_l);break;
		case 35:	instance_create_depth(x-21,y-8,depth-1,obj_boss1_small_projectile);
					instance_destroy();
					break;
	}
}
if stage = 2 
{
	switch(t)
	{
		case 1:		instance_create_depth(x+21,y-8,depth-1,obj_boss1_small_pre_projectile_r);break;
		case 25:	instance_create_depth(x+21,y-8,depth-1,obj_boss1_small_pre_projectile_r);break;
		case 35:	instance_create_depth(x+21,y-8,depth-1,obj_boss1_small_projectile);
					instance_destroy();
					break;
	}
}
