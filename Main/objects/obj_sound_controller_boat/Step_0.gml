/// @description Insert description here
// You can write your code in this editor

audio_sound_gain(msc_Boat_level,vol,0);
vol-=0.01;
if vol <= 0 
{
    audio_stop_sound(msc_Boat_level);
    obj_ctsc_player_boat_small.transfer = true;
    instance_destroy();
}
