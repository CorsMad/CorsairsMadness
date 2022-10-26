/// @description Insert description here
// You can write your code in this editor

if boomer = 0 && boom_timer = 0
{
    t = 0;
    boomer = 1;
    state = 4;
    boom_timer = 1;
    spd = 0;
    t_attack = 0;
    image_index = 0;
    instance_create_depth(x,y-32,depth-1,obj_sfx_dust_expl_big);
    var a1 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a2 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a3 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a4 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    a1.hspd = -2;
    a1.vspd = -3;
    a2.hspd = 2;
    a2.vspd = -3;
    a3.hspd = -1;
    a3.vspd = -6;
    a4.hspd = 1;
    a4.vspd = -6;
}


if boomer = 1 && boom_timer = 0 
{
    boomer = 2;
    boom_timer = 1;
    state = 6;
    image_index = 0;
    instance_create_depth(x,y-32,depth-1,obj_sfx_dust_expl_big);
    var a1 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a2 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a3 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    var a4 = instance_create_depth(x,y,depth-1,obj_armor_skel_part);
    a1.hspd = -2;
    a1.vspd = -3;
    a2.hspd = 2;
    a2.vspd = -3;
    a3.hspd = -1;
    a3.vspd = -6;
    a4.hspd = 1;
    a4.vspd = -6;
}