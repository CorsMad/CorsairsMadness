/// @description Insert description here
// You can write your code in this editor
t++;
if t = 100
{
    instance_create_depth(464,256,depth,obj_boss_d1_3)
    instance_destroy();
    if instance_exists(obj_ow_platform_3_d1_boss_mov)
    {
        obj_ow_platform_3_d1_boss_mov.isOn = 1;   
    }
}