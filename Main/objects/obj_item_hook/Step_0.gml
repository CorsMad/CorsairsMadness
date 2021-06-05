if left = 1 && !place_meeting(bbox_left-1,y,obj_item_hook) && obj_Player.isHooking = 1
{
	hspd = -14
}

if right = 1 && !place_meeting(bbox_right+1,y,obj_item_hook) && obj_Player.isHooking = 1
{
	hspd = 14;
}

// Разруушение об стену

if place_meeting(x+sign(hspd),y,obj_block) && !place_meeting(x+sign(hspd),y,obj_item_hook_anchor)
{
	instance_destroy();
	obj_Player.isHooking = 0;	
}

if obj_Player.isHooking = 0
{
	instance_destroy();	
}

// Притяжка игрока

if place_meeting(x+sign(hspd),y,obj_item_hook_anchor) 
{
	obj_Player.isGravitate = 1;
}

// Разрушение при притягивании

if obj_Player.isGravitate = 1 && place_meeting(x,y,obj_Player)
{
	obj_Player.isHooking = 0;	
	obj_Player.isGravitate = 0;	
	instance_destroy();
}

// Разрушение при столкновении


fnc_Collision(obj_block);

// Нить
if hspd !=0
{
	a++;
	if a = 2 
	{	
		a = 0;
		if hspd > 0 
		{
			instance_create_depth(x-8,y,0,obj_hook_net);	
		}
		if hspd < 0 
		{
			instance_create_depth(x+8,y,0,obj_hook_net);	
		}
	}
}
if hspd = 0 
{
	a = 0;	
}

// Анимация

if hspd > 0 
{
	image_xscale = 1;	
}
if hspd < 0 
{
	image_xscale = -1;	
}
if hspd = 0 
{
	image_speed = 0;	
}