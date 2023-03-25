/// @description Insert description here
// You can write your code in this editor
if  instance_exists(obj_maze3_pic1) &&
    instance_exists(obj_maze3_pic2) &&
    instance_exists(obj_maze3_pic3) 
{
    if place_meeting(x,y,obj_hitbox) && isOn = 0 && obj_maze3_pic1.mov = 0 && obj_maze3_pic2.mov = 0 && obj_maze3_pic3.mov = 0 
    {
        if instance_exists(obj_Player)
        {
            if obj_Player.x <=x {obj_maze3_pic1.mov = 1;image_index = 1;} else 
            {obj_maze3_pic1.mov = -1;image_index = 0;}
        }
        fnc_snd_play_onetime(snd_bomb_selektor);
    	isOn = 1;     
    }
}

if isOn = 1
{
    t++;
    if t = 25 {image_index = 2;isOn = 0;t =0;}
}



/*

if place_meeting(x,y,obj_hitbox) && isOn = 0
{    
    fnc_snd_play_onetime(snd_bomb_selektor);
	image_index = 1;
	isOn = 1;  
    global.maze_trigger1_j1_r13 = 1;
}

if isOn = 1
{
    image_index = 1;   
}