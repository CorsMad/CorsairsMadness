if instance_exists(obj_Player)
{
    if obj_Player.x > room_width/2{
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 1;
            obj_wall_trigger.imspd = 1;
        }
        if instance_exists(obj_wall_trigger_tp)
        {
            obj_wall_trigger_tp.state = 1;
            obj_wall_trigger_tp.imspd = 1;
        }
    }           
}