if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2 
    {
        image_xscale = 1;   
    } else image_xscale = -1;
}