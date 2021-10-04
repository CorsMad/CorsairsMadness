/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        
        if instance_exists(obj_hitbox_down)
        {
            hit_cd = 1;
		    enemy_hp -= 1;
            
            obj_Player.isAttackingdown = 0;
    		obj_Player.attackingdown_timer = 0;
    		obj_Player.vspd = -5;
            
        }
		instance_create_depth(x,y-32,-1,obj_sfx_weapon_slash);
	}