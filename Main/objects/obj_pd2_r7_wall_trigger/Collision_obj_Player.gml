/// @description Insert description here
// You can write your code in this editor


instance_create_depth(0,0,0,obj_pd2_r7_wall_controller);
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

instance_destroy();