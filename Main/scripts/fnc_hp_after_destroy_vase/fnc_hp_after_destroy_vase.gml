// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_hp_after_destroy_vase(argument0,argument1)
{
    var rnd = irandom(101)
    if global.hp = 2
        if rnd <= argument0
        {
             instance_create_depth(x,y-18,depth-1,obj_hp1_gain_gift_mold);  
        }
    if global.hp = 1
    {
        if rnd <= argument1
        {
            instance_create_depth(x,y-18,depth-1,obj_hp1_gain_gift_mold);  
        }   
    }
}