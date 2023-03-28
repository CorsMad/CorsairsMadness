/// @description Insert description here
// You can write your code in this editor
y+=vspd;
if place_meeting(x,y,obj_hitbox)
{
	if instance_exists(obj_maze5_controller)
	{
		obj_maze5_controller.score_count+=30;
		instance_destroy();
	}
}
if y >= room_height+32 instance_destroy();