/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player) 
{
	global.gold += 20;
	instance_create_depth(x,y,1,obj_sfx3);
	instance_destroy();
}
