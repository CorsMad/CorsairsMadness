/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    image_xscale = obj_Player.dir;
	x = obj_Player.x+obj_Player.dir*16;
	y = obj_Player.y; 	
}

getCombo = 0;