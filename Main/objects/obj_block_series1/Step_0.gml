/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox_mask)
{
	if isOn = 0
	{
		isOn = 1;	
	}
}

if isOn = 1
{
	t++;	
	if t = t_max 
	{
		t = 0;
		isOn = 0;
	}
}

//ANimation
switch(isOn)
{
	case 0: sprite_index = spr_combo_a;break;
	case 1: sprite_index = spr_combo_c;break;
}