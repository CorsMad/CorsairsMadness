/// @description Insert description here
// You can write your code in this editor

if isOn = 0 
{
    if obj_maze1_1.isOff = 1 && obj_maze1_2.isOff = 1 && obj_maze1_3.isOff = 1 && obj_maze1_4.isOff = 1 
    {
        fnc_snd_play_onetime(snd_maze_complete);
        isOn = 1;   
    }
}


if isOn = 1
{
    image_speed = 0.5;   
}

