/// @description Insert description here
// You can write your code in this editor


instance_create_depth(0,0,0,obj_jp2_r9_wall_controller);
if instance_exists(obj_wall_trigger)
{
    obj_wall_trigger.state = 1;
    obj_wall_trigger.imspd = 1;
}

instance_destroy();