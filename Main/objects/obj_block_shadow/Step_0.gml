/// @description Insert description here
// You can write your code in this editor

if isOn = 1
{
    if image_alpha < 1
    {
        image_alpha +=0.05;   
    }
}

if isOn = 0
{
    image_alpha -=0.05;
    if image_alpha <= 0 {fnc_snd_play_over(snd_ps_block_destr);instance_destroy();}
}