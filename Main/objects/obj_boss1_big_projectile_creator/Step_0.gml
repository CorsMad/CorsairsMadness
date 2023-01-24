/// @description Insert description here
// You can write your code in this editor
t++;
if instance_exists(obj_boss1_phase1)
{
	x = obj_boss1_phase1.x;
	y = obj_boss1_phase1.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}

if instance_exists(obj_boss1_phase2)
{
	x = obj_boss1_phase2.x;
	y = obj_boss1_phase2.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}

if instance_exists(obj_boss1_phase3)
{
	x = obj_boss1_phase3.x;
	y = obj_boss1_phase3.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}

if instance_exists(obj_boss1e_phase3)
{
	x = obj_boss1e_phase3.x;
	y = obj_boss1e_phase3.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}

if instance_exists(obj_boss1e_phase2)
{
	x = obj_boss1e_phase2.x;
	y = obj_boss1e_phase2.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}

if instance_exists(obj_boss_d1_1)
{
	x = obj_boss_d1_1.x;
	y = obj_boss_d1_1.y;


	switch(t)
	{
		case 1:		instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 20:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 35:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 45:	instance_create_depth(x,y,depth-1,obj_boss1_big_pre_projectile);break;
		case 65:	instance_create_depth(x,y,depth-1,obj_boss1_big_projectile);
					instance_destroy();
					break;
	}
}
