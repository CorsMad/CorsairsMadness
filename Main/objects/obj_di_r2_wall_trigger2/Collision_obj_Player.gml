/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.clone_timer = 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
    {
        instance_create_depth(0,0,0,obj_di_r2_wall_controller2);
        if instance_exists(obj_wall_trigger_di_r2_2)
        {
            obj_wall_trigger_di_r2_2.state = 1;
            obj_wall_trigger_di_r2_2.imspd = 1;
        }
        instance_destroy();   
    }
}
