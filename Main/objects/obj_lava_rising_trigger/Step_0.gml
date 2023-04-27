/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_lava_rising)   
    {
        obj_lava_rising.isOn = 1;   
    }
    instance_destroy();
}