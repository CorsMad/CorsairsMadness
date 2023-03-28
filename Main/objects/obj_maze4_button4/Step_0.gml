/// @description Insert description here
// You can write your code in this editor


if Working = 1
{
	if place_meeting(x,y,obj_hitbox) && isOn = 0
	{
		isOn = 1;	
		obj_maze4_controller.b4 = 1;
	}
}




//Anim
if isOn = 1 image_index = 1 else image_index = 0;