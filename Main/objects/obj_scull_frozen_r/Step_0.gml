/// @description Insert description here
// You can write your code in this editor

#region movement
if state = 1
{
	x+=spd;
	y = y + cos(a)*2;
	a+= 0.05;
	image_xscale = -sign(spd);
}
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

#region #hp

if enemy_hp < 1
{
    instance_create_depth(x,y,depth-1,obj_sfx_explosion);
	var d1 = instance_create_depth(x,y,depth-1,obj_scull_frozen_dead)
    d1.image_xscale = image_xscale;
    
	instance_destroy();
}

#endregion

