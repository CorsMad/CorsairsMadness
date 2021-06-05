// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_enemy_no_armor_dmg_masked()
{
    
	if (place_meeting(x,y,obj_hitbox_mask) || place_meeting(x,y,obj_hitbox_mask_dash)) &&  hit_cd = 0
    
	{
		hit_cd = 1;
		enemy_hp -= 1;
        if obj_Player.isGrounded = 0
        {
            obj_Player.vspd = -3;   
        }
	}
	if hit_cd > 0 
	{
		hit_cd+=1;	
	}
	if hit_cd > 10 
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