/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.x > room_width/2
	{
		x = room_width;	
	}
	if obj_Player.x < room_width/2
	{
		x = 0;	
	}
}

instance_create_depth(x,y,depth,obj_combometer) ;