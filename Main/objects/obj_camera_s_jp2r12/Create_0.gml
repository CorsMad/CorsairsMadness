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

state = 0;

if instance_exists(obj_Player)
{
    if obj_Player.y < room_height/2   
    {
        y = 0;
    }   else y = 408;
}