/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
	enemy_hp = fol.enemy_hp;
    // получение урона
    	 
 // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();



    
} else instance_destroy();