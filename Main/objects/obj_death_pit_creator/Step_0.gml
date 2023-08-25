/// @description Insert description here
// You can write your code in this editor
t++;
if t >= 120 
{
	instance_create_depth(x+8,y+8,0,obj_death_pit);
	t = 0;
}