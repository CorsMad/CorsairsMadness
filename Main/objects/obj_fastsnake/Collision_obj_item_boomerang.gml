/// @description Insert description here
// You can write your code in this editor

if state!=2
{
    fnc_snd_play_onetime(snd_get_boomerang);
    state = 2;
    boom = other;   
}
