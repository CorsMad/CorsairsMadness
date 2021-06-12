/// @description Insert description here
// You can write your code in this editor
a++;

if a = 20
{
	instance_create_depth(x+random_range(-16,16),y+random_range(-8,8),-1,choose(obj_sfx_sparkle_1,obj_sfx_sparkle_2));
    a = 0;
}

if instance_exists(obj_Player)
{
    x = obj_Player.x;
    y = obj_Player.y-16;
}