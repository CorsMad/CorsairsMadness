/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

if instance_exists(obj_Player)
{
	depth = obj_Player.depth+1;	
}

TargetRoom = asset_get_index(room_get_name(room));