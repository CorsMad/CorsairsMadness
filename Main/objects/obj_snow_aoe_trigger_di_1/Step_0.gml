/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_di_2)
    {
        var tr = instance_create_depth(1584,-128,depth,obj_snow_aoe_trigger_di_2)   
        tr.image_xscale = 2;
        tr.image_yscale = 5.5;
    }
    if !instance_exists(obj_snow_aoe_trigger_di_3)
    {
        var tr = instance_create_depth(3632,-128,depth,obj_snow_aoe_trigger_di_3)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 496;
        obj_snow_aoe.dest_y = 64;
        
    }
    instance_destroy();
}




