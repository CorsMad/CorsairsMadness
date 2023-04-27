/// @description Insert description here
// You can write your code in this editor
if instance_exists(own)
{
    if own.state = 0 instance_destroy();
    if enemy_hp < 1 {own.enemy_hp -=6;instance_destroy();}
} else instance_destroy();



#region если свернулся



#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();

#endregion
