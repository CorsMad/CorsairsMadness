/// @description Insert description here
// You can write your code in this editor
x+=hspd 
if state = 0
{
	if hspd> 0 && place_meeting(x+hspd,y,obj_block)
	{
		state = 1;
	}
	if hspd< 0 && place_meeting(x-hspd,y,obj_block)
	{
		state = 1;
	}
}

if state = 1
{
	instance_create_depth(x,y,depth,obj_sfx2);
	instance_destroy();	
}