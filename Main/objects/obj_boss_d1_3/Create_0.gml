/// @description Insert description here
// You can write your code in this editor

state = 0;
t = 0;
enemy_hp = 15;



deye = instance_create_depth(407,43,depth-1,obj_boss_d1_3_eye);
deye.fol = id;

if instance_exists(obj_ow_platform_3_d1_boss_mov)
    {
        obj_ow_platform_3_d1_boss_mov.isOn = 1;   
    }
instance_create_depth(32,128,depth,obj_magicarrow_target_d1_boss_appear);


t_sander = 0;
t_sander_choose = 0;

t_sand = 0;

red = 0;