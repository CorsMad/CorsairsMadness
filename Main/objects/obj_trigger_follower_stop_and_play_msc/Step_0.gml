/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{   
    if obj_Player.isDead = 0{
        if place_meeting(x,y,obj_Player){
        fnc_msc_stop_play();
        fnc_msc_play(msc_jp1_prepurch);   
        instance_destroy();
    }
    }
        
}










