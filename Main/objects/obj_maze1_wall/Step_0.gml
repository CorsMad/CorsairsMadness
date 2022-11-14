/// @description Insert description here
// You can write your code in this editor




if isOn = 1
{
	instance_create_depth(x+12,y+8,-1,obj_sfx3);
	instance_create_depth(x+32,y+8,-1,obj_sfx3);
	instance_create_depth(x+52,y+8,-1,obj_sfx3);
	
	instance_create_depth(x+8,y+8,0,obj_silver_key_door3_part1);
	instance_create_depth(x+24,y+8,0,obj_silver_key_door3_part2);
	instance_create_depth(x+40,y+8,0,obj_silver_key_door3_part3);
	instance_create_depth(x+48,y+8,0,obj_silver_key_door3_part4);
	instance_destroy();	
    fnc_snd_play_over(snd_door_open);
}