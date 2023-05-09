/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_item_boomerang) && hit_cd = 0
{
	hit_cd = 1;
	hp -= 3;
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx1)
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx2)
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx1)
}
if place_meeting(x,y,obj_hitbox) && hit_cd = 0
{
	hit_cd = 1;
	hp -= 1;
	instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash)
}

if hit_cd!=0 hit_cd++;
if hit_cd >=10 hit_cd = 0;

if hp <=0 instance_destroy();