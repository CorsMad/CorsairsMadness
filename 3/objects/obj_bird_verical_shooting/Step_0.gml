/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	if place_meeting(x,y+spd,obj_block)
	{
		spd = -spd;	
	}
	y+=spd;
	
	if x > obj_Player.x
	{
		image_xscale = -1;	
	} else image_xscale = 1;
	
	a++;
	if a = 150
	{
		instance_create_depth(x,y+8,-1,obj_sfx1);	
	}
	if a = 160
	{
		instance_create_depth(x,y,1,obj_bird_vertical_coconut);
		a = 0;
	}
}
#endregion