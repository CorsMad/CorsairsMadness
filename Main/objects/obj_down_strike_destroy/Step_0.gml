if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_down_strike_destroy_creator)
    {
        obj_down_strike_destroy_creator.isOn = 0;   
    }
    instance_destroy();   
}