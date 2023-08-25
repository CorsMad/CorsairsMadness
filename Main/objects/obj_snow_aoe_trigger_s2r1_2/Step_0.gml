/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if !instance_exists(obj_snow_aoe_trigger_s2r1_1)
    {
        var tr = instance_create_depth(320,0,depth,obj_snow_aoe_trigger_s2r1_1)   
        tr.image_yscale = 5;
    }
    if instance_exists(obj_snow_aoe)
    {
        obj_snow_aoe.dest_x = 800;
        obj_snow_aoe.dest_y = 144;
        
    }
    instance_destroy();
}





