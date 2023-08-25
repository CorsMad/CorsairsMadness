/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_s1r11_1)
    {
        var tr = instance_create_depth(160,0,depth,obj_snow_aoe_trigger_s1r11_1)   
        tr.image_xscale = 0.25;
        tr.image_yscale = 5.75;
    }
    if !instance_exists(obj_snow_aoe_trigger_s1r11_3)
    {
        var tr = instance_create_depth(1696,0,depth,obj_snow_aoe_trigger_s1r11_3)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 1408+16;
        obj_snow_aoe.dest_y = 208;
        
    }
    instance_destroy();
}





