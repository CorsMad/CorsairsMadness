/// @description Insert description here
// You can write your code in this editor

t++;
if t > 50 image_speed = 1;

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);

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

#region Смерть
if enemy_hp < 0
{
    var death = instance_create_depth(x,y,depth,obj_zombie_death);
    death.sprite_index = sprite_index;
    death.image_index = image_index;
    instance_destroy();
}
#endregion