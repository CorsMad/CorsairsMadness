/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_s1r2_2)
    {
        var tr = instance_create_depth(1808,0,depth,obj_snow_aoe_trigger_s1r2_2)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 512;
        obj_snow_aoe.dest_y = 160;
        
    }
    instance_destroy();
}




