/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_Player) 
{
	var obj = instance_create_depth(x_cr,y_cr,0,obj_follower_lava_attack)
	obj.x_dest = x_dest;
	obj.y_dest = y_dest;
	instance_destroy();	
}