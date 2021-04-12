/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player) && obj_Player.key_down   
{
	obj_Player.isCarry = 1;
	instance_destroy();
}