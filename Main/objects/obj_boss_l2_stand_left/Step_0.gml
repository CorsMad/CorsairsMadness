/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_item_boomerang) && hit_cd = 0
{
	hit_cd = 1;
	hp -= 3;
    t_red = 1;
	instance_create_depth(x+98+random_range(-8,8),y+192+random_range(-8,8),depth-1,obj_sfx1)
	instance_create_depth(x+98+random_range(-8,8),y+192+random_range(-8,8),depth-1,obj_sfx2)
	instance_create_depth(x+98+random_range(-8,8),y+192+random_range(-8,8),depth-1,obj_sfx1)
}
if place_meeting(x,y,obj_hitbox) && hit_cd = 0
{
	hit_cd = 1;
    t_red = 1;
	hp -= 1;
	instance_create_depth(x+98,y+192,depth-1,obj_sfx_weapon_slash)
}

if hit_cd!=0 hit_cd++;
if hit_cd >=11 hit_cd = 0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red=10 {t_red=0;image_blend = c_white;}


if hp <=0 
{
    instance_destroy();
    instance_create_depth(x,y,depth,obj_boss_l2_stand_left_death);
}