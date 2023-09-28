/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_di_1)
    {
        var tr = instance_create_depth(464,-128,depth,obj_snow_aoe_trigger_s1r11_1)   
        tr.image_xscale = 1;
        tr.image_yscale = 3.5;
    }
    if !instance_exists(obj_snow_aoe_trigger_di_3)
    {
        var tr = instance_create_depth(3632,-128,depth,obj_snow_aoe_trigger_di_3)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 1648;
        obj_snow_aoe.dest_y = 192;
        
    }
    instance_destroy();
}





