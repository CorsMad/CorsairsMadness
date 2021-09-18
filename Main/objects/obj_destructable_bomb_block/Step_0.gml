/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_destructable_bomb_expl)
{
	isOn = 1;
}

if isOn = 1
{
	timer++;		
}

switch(timer)
{
	case 1: image_index = 1;break;
	case 5: instance_create_depth(x+8,y+8,depth-1,obj_sfx_explosion);
            fnc_snd_play_over(snd_bomb_block_destr);
            break;
	case 10:	instance_create_depth(x+8,y+8,depth-2,obj_sfx2);
			instance_create_depth(x+8,y+8,depth-1,obj_destructable_bomb_expl);
			break;
	case 15: instance_destroy();break;
}