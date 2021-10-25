// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_boat_destroyer()
{
    if place_meeting(x,y,obj_trigger_boat_level_global_destroyer)
    {
        instance_destroy();   
    }
}