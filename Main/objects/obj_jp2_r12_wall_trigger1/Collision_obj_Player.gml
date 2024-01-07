/// @description Insert description here
// You can write your code in this editor


instance_create_depth(0,0,0,obj_jp2_r12_wall_controller1);
if instance_exists(obj_wall_trigger) && instance_exists(obj_wall_trigger_close1_h)
{
    obj_wall_trigger.state = 1;
    obj_wall_trigger.imspd = 1;
    obj_wall_trigger_close1_h.state = 1;
    obj_wall_trigger_close1_h.imspd = 1;
}

instance_destroy();