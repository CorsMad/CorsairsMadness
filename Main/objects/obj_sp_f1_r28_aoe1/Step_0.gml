/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    instance_create_depth(0,0,0,obj_sp_f1_r28_trigger1);

    obj_wall_trigger_close1_f1_r28.state = 1;
    obj_wall_trigger_close1_f1_r28.imspd = 1;
        
    instance_destroy();
}