/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    isOn = 1 ;      
}

if isOn = 1
{
    audio_sound_gain(msc_Temple1,vol,0);
    vol-=0.01;
    if vol <= 0 
    {
        audio_stop_sound(msc_Temple1);
        instance_destroy();
        global.Music_controller_f1_r32 = 0;
        
    }
}