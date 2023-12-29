/// @description Insert description here
// You can write your code in this editor
if instance_exists(owner)
{
	owner.enemy_hp = enemy_hp;
    if owner.hide = 0
    {
        mask_index = spr_sander_mask_on;   
    } else mask_index = spr_sander_mask_off;//mask_index = spr_sander_mask_off;
	
	#region получение урона
	// Атака

    fnc_take_dmg_hitbox(-10,-8,-1,10,-8,-1);

// Удар вниз   

    if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        
        if instance_exists(obj_hitbox_down)
        {
            hit_cd = 1;
		    enemy_hp -= 1;
            if owner.state = 2 && owner.enemy_hp <= 1{
                fnc_achiev_get("ACH24"); 
            }
            obj_Player.isAttackingdown = 0;
    		obj_Player.attackingdown_timer = 0;
    		obj_Player.vspd = -5;                         
        }
		instance_create_depth(x,y-32,-1,obj_sfx_weapon_slash);
	}  


    //fnc_take_dmg_hitbox_down(0,-32,-1);
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
	#endregion
	
	
	
	
	
	
}




if !instance_exists(owner)
{
    instance_destroy();   
}