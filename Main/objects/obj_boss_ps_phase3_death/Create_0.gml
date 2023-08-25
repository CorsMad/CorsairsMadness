/// @description Insert description here
// You can write your code in this editor
fnc_msc_stop_play_slow();
t=0;
t_blood = 0;
hspd = 0;
image_speed = 0;
instance_destroy(obj_boss_ps_shiled);

if place_meeting(x,y+1,obj_block)
{
    vspd = -3;   
} else vspd = 0;


