/// @description Insert description here
// You can write your code in this editor

if stop_music = 0
{
    sm_t = 0;
    
    // полное выключение
    if t = 0 || t > 32
    {
        global.MSCvolume = 0;   
    }

    // нарастание музыки
    if t < 32 
    {
        t++; 
        if global.MSCvolume < global.MSCvolume_max
        {
            global.MSCvolume+=0.05;   
        }
    }
    
   if t = 30
   {
       audio_play_sound(musicId,1000,true);   
       audio_sound_gain(musicId,global.MSCvolume,0);
   }
}

/*
if t = 30
{
    audio_play_sound(musicId,1000,true);   
    audio_sound_gain(musicId,global.MSCvolume,0);
}
*/


if stop_music = 1
{    
    sm_t++;
    audio_sound_gain(musicId,global.MSCvolume,0);
    global.MSCvolume-=0.05;
    if global.MSCvolume <= 0
    {
        global.MSCvolume = 0;   
        audio_stop_sound(musicId);
        musicId = noone;
        t = 33;
        stop_music = 0;
    }
}