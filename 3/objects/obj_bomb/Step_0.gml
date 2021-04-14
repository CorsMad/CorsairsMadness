/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
if place_meeting(x,y,obj_Player) && obj_Player.key_down   
{
	obj_Player.isCarry = 1;
	instance_destroy();
}

if place_meeting(x-1,y,obj_block) || place_meeting(x+1,y,obj_block)
{
	hspd = 0;	
}

if hspd = 0 && !place_meeting(x,y+1,obj_block)
{
	vspd +=1;	
}