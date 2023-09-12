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

    fnc_take_dmg_hitbox_down(0,-32,-1);
	
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