/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_wall_trigger_close1)
{
	if isOn = 0 && place_meeting(x,y,obj_Player)
	{
		
		obj_wall_trigger_close1.isClosed = 1;
		obj_wall_trigger_close1.imspd = 1;
		instance_destroy();
	}
}