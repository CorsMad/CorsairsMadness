/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_s2s_2)
    {
        var tr = instance_create_depth(1184,-80,depth,obj_snow_aoe_trigger_s2s_2)   
        tr.image_yscale = 3.25;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 176;
        obj_snow_aoe.dest_y = 64;
        
    }
    instance_destroy();
}




