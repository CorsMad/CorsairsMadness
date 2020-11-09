/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	if place_meeting(x+spd,y,obj_block)
	{
		spd = -spd;	
	}
	x+=spd;
	
	image_xscale = sign(spd);
	a++; 
	if a = 90
	{
		instance_create_depth(x,y,1,obj_bird_horizontal_coconut);
		a = 0;
	}
}
#endregion