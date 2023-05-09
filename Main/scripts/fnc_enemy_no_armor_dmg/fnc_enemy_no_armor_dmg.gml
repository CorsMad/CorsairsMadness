// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_enemy_no_armor_dmg()
{
	 
	if hit_cd > 0 
	{
		hit_cd+=1;	
	}
	if hit_cd > 10 //10
	{
		hit_cd = 0;	
	}
	
	if hit_cd > 0 
	{
		image_blend = c_red;	
	}
	if hit_cd = 0
	{
		image_blend = c_white;	
	}
		
}

function fnc_enemy_no_armor_noblend_dmg()
{
	 
	if hit_cd > 0 
	{
		hit_cd+=1;	
	}
	if hit_cd > 10 
	{
		hit_cd = 0;	
	}		
}