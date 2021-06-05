/// @description Insert description here
// You can write your code in this editor
a++;

if a = 0 || a = 10 || a = 20 || a = 30 || a = 40
{
	instance_create_depth(x+random_range(-16,16),y+random_range(-8,8),-1,choose(obj_sfx_sparkle_1,obj_sfx_sparkle_2));
}
if a = 45 
{
	instance_create_depth(x,y,1,obj_sfx_explosion);
	instance_destroy();
}	