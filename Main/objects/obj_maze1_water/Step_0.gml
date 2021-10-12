/// @description Insert description here
// You can write your code in this editor
if off = 0
{
    if instance_exists(obj_maze1_1) && instance_exists(obj_maze1_2) && instance_exists(obj_maze1_3) && instance_exists(obj_maze1_4)
    {
        if obj_maze1_1.isOn = 1 && obj_maze1_2.isOn = 1 &&  obj_maze1_3.isOn = 1 &&  obj_maze1_4.isOn = 1
        {
            image_speed = 1;        
        }
    }   
}
if image_index = 1 || image_index = 3 || image_index = 5 || image_index = 7 || image_index = 9 || image_index = 11 || image_index = 13 || image_index = 13  || image_index = 15 
{
    if !audio_play_sound(snd_maze_woosh,1,false)  
    {
        audio_play_sound(snd_maze_woosh,1,false);   
    }
}

