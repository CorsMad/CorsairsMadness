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
}
#endregion