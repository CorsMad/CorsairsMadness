/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.clone_timer = 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
    {
        instance_create_depth(0,0,0,obj_ps2_r6_wall_controller);
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 1;
            obj_wall_trigger.imspd = 1;
        }
        instance_destroy();   
    }
}
