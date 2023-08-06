/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player) 
{
	if obj_Player.x < room_width/2 
	{
		instance_create_depth(672,208,0,obj_molded_yellow_run);
	}
}