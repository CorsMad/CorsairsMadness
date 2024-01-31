/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox) && isOn = 0
{    
    fnc_snd_play_over(snd_secrets_gain);
    fnc_snd_play_onetime(snd_bomb_selektor);
	image_index = 1;
	isOn = 1;  
	instance_create_depth(428,88,1,obj_maze1_elect_r16);
    global.maze_trigger3_j1_r13 = 1;
}

if isOn = 1
{
    image_index = 1;   
}