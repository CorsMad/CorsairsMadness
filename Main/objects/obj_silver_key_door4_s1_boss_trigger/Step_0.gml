/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_silver_key_door4_s1_boss)   
    {
        obj_silver_key_door4_s1_boss.isOn = 1;        
    }
    instance_destroy();
}


