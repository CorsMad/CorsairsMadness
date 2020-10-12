if place_meeting(x,y,obj_Player) || place_meeting(x,y,obj_block) 
{
	instance_destroy();	
}
if !instance_exists(obj_item_hook) 
{
	instance_destroy();
}