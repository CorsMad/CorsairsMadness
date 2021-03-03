/// @description Insert description here
// You can write your code in this editor
hspeed = spd;

if place_meeting(x,y,obj_block) || place_meeting(x,y,obj_plant_projectile_wall) || (place_meeting(x,y,obj_Player) && obj_Player.isTakingdmg = 1)
{
	instance_create_depth(x,y,1,obj_sfx1);
	instance_destroy();	
}