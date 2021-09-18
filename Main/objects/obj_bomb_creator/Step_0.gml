/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox) && !instance_exists(obj_bomb) && obj_Player.isCarry = 0 && isOn = 0
{
    fnc_snd_play_onetime(snd_bomb_selektor);
	image_index = 1;
	isOn = 1;
	if instance_exists(obj_bomb_emitter)
	{
		instance_create_depth(obj_bomb_emitter.x+16,obj_bomb_emitter.y+20,-1,obj_bomb);	
	}
	
}
if !instance_exists(obj_bomb) && obj_Player.isCarry = 0 && isOn = 1
{
	timer++;
}

switch(timer)
{
	case 10 :	image_index = 2;break;
	case 15:	image_index = 0;
				timer = 0; 
				isOn = 0;
				break;			
}