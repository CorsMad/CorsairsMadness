/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_scull_cr_1){
        var s1 = instance_create_depth(1776,-128,0,obj_snow_aoe_scull_cr_1)   ;
        s1.image_yscale = 7.5;
    }
    if !instance_exists(obj_snow_aoe_scull_cr_2){
        var s1 = instance_create_depth(2064,-128,0,obj_snow_aoe_scull_cr_2)   ;
        s1.image_yscale = 7.5;
    }
}





