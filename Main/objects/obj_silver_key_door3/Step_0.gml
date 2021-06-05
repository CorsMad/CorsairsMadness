/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
	if (place_meeting(x+1,y,obj_Player) || place_meeting(x-1,y,obj_Player) || place_meeting(x,y+1,obj_Player) || place_meeting(x,y-1,obj_Player)) && obj_Player.silverkey_counts > 0 
	{
		if instance_exists(obj_silver_key_projectile)
		{
			obj_silver_key_projectile.isOn = 0;	
		}
		obj_Player.silverkey_counts -=1;
		isOn = 0;
	}
}
if isOn = 0
{
	instance_create_depth(x+4,y+12,-1,obj_sfx3);
	instance_create_depth(x+12,y+24,-1,obj_sfx3);
	instance_create_depth(x+6,y+32,-1,obj_sfx3);
	
	instance_create_depth(x,y,0,obj_silver_key_door3_part1);
	instance_create_depth(x+8,y,0,obj_silver_key_door3_part2);
	instance_create_depth(x,y+24,0,obj_silver_key_door3_part3);
	instance_create_depth(x+8,y+24,0,obj_silver_key_door3_part4);
	instance_destroy();	
}