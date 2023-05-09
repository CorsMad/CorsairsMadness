/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
    // получение урона
    	 
// Атака

    fnc_take_dmg_hitbox_fol(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe_fol(-10,-16,-1,10,-16,-1);
    
// Бомба

    fnc_take_dmg_bomb_fol(-10,-16,-1,10,-16,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down_fol(0,-32,-1);
    

// Получение урона

    fnc_enemy_no_armor_dmg();



    
} else instance_destroy();