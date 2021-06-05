/// @description Insert description here
// You can write your code in this editor
vspd +=0.1;
hspd = lerp(hspd,0,0.015);
if place_meeting(x+1,y,obj_block) || place_meeting(x-1,y,obj_block)
{
	hspd = -hspd;	
}
if count = 2 && place_meeting(x,y+1,obj_block)
{
	vspd = -2.25;	
	count -=1;
	image_xscale = 1;
	image_yscale = 1;
}

if count = 1 && place_meeting(x,y+1,obj_block)
{
	vspd = -1.5;	
	count -=1;
	timer = 1;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if timer !=0
{
	timer++	
}
	if count = 0 && place_meeting(x,y+1,obj_block) && timer > 2
	{
		instance_destroy();
	}

fnc_Collision(obj_block);