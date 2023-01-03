/// @description Insert description here
// You can write your code in this editor


instance_create_depth(0,0,0,obj_jp2_r12_wall_controller2);
if instance_exists(obj_wall_trigger)
{
    obj_wall_trigger.state = 1;
    obj_wall_trigger.imspd = 1;
    obj_wall_trigger.t = 0;
}

instance_destroy();