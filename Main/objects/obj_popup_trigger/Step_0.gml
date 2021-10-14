/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_popup_window1)
{
	if place_meeting(x,y,obj_Player)
	{
		{
			obj_popup_window1.isOn = 1;	
		} 
	}	else obj_popup_window1.isOn = 0;
}	