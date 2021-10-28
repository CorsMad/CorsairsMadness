/// @description Insert description here
// You can write your code in this editor
instance_create_depth(272,y_cr,0,obj_follower_grounded);
instance_destroy();
if instance_exists(obj_wall_trigger_close1_f1_r34)
{
    obj_wall_trigger_close1_f1_r34.state = 1;
    obj_wall_trigger_close1_f1_r34.imspd = 1;
}