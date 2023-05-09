/// @description Insert description here
// You can write your code in this editor

if armor>0
{
	var fireCollision = instance_place(x,y,obj_boss_l2_bomb_small_fire);
	if fireCollision != noone 
	{
		fireCollision.state = 1;	
		armor-=1;
	}
}
//

if hit_cd!=0 hit_cd++;
if hit_cd = 10 hit_cd = 0;

if armor <=0 
{
	if hit_cd = 0 && place_meeting(x,y,obj_hitbox)
	{
		hit_cd = 1;
		hp -=1;
	}
}

if hp<=0
{
	instance_destroy();
	obj_boss_l2_phase1.right = 1;
}