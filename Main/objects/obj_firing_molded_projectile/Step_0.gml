/// @description Insert description here
// You can write your code in this editor
if state = 1 && place_meeting(x,y,obj_hitbox_mask)
{
	state = 2;
	spd = 8
	if obj_Player.x <= x
	{
		hspeed = spd;
	} else hspeed = -spd;
}
if state = 2
{
	vspeed = 0;
}