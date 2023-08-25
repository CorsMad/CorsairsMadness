/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_s1r11_2)
    {
        var tr = instance_create_depth(1376,208,depth,obj_snow_aoe_trigger_s1r11_2)   
        tr.image_xscale = 1.25;
        tr.image_yscale = 1.25;
    }
    if !instance_exists(obj_snow_aoe_trigger_s1r11_3)
    {
        var tr = instance_create_depth(1696,0,depth,obj_snow_aoe_trigger_s1r11_3)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 168;
        obj_snow_aoe.dest_y = 144;
        
    }
    instance_destroy();
}




