/// @description Insert description here
// You can write your code in this editor
#region Выключен
if isOn = 0 
{
	if place_meeting(x,y,obj_Player)
	{
        fnc_snd_play_over(snd_spikes_trap_activation);
		instance_create_depth(x+16,y+14,-1,obj_sfx4);
		isOn = 1;	
		image_index = 1;
	}
}
#endregion

#region Включен

if isOn = 1 
{
	a++;
	switch(a)
	{
		case 5 :	image_index = 2;break;
		case 10 :	image_index = 3;break;
		case 15:	image_index = 4;break;
		case 20:	image_index = 5;break;
		case 25:	image_index = 6;break;
		case 30:	image_index = 7;break;
		case 35:	image_index = 8;break;
		case 40:	image_index = 9;
					instance_create_depth(x,y,0,obj_trapspike_mask);
					break;
		case 113:	image_index = 10;break;
		case 117:	image_index = 11;break;
		case 120:	image_index = 12;break;
		case 147:	image_index = 0;break;
		case 150:	isOn = 0;a = 0;break;
	}
}
#endregion