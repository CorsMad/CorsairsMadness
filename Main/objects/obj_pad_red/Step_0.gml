/// @description Insert description here
// You can write your code in this editor

if isOn = 1 && place_meeting(x,y,obj_Player) 
{
	instance_create_depth(x,y,-1,obj_pad_red_player_sfx);
	/*
    obj_Player.dashing_timer_count = 0;
    obj_Player.dashing_timer = 0;
    obj_Player.dash_on_ground = 0;
    obj_Player.dash_in_air = 0;
    obj_Player.dash_count = 0;
    */
	isOn = 0;
}
if isOn = 0 
{
	a++;
	if a = 88
	{
		instance_create_depth(x,y,-2,obj_pad_red_proj);	
	}
	if a = 90
	{
		a = 0;
		isOn = 1;
	}
}

#region animation

if isOn = 1
{
	sprite_index = spr_pad_red_on;
} else sprite_index = spr_pad_red_off;
	
#endregion