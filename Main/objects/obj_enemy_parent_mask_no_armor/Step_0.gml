/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_mask) && hit_cd = 0
{
	hit_cd = 1;
	enemy_hp -= 1;
}
if hit_cd > 0 
{
	hit_cd+=1;	
}
if hit_cd > 10 
{
	hit_cd = 0;	
}

if enemy_hp <= 0 
{
	hit_cd = -1;	
}