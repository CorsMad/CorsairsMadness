/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
vspd+=0.2;
if place_meeting(x,y+1,obj_block)
{
	hspd = 0;
	vspd = 0;
}