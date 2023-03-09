/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
	if instance_exists(obj_masked_clone)	
	{
		if place_meeting(x,y,obj_Player)
		{
			isOn = 0
			obj_Player.clone_timer = 1;
		}
	}
}

if instance_exists(obj_Player)
{
	if isOn = 0 && obj_Player.isDead = 132
	{
		isOn = 1;	
	}
}

//ANIMATION

switch(isOn)
{
	case 1:	sprite_index = spr_block_dust;break;
	case 0:	sprite_index = -1;break;
}