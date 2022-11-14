/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	x+=spd;
	image_xscale = sign(spd);
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
	state = 2;
	instance_create_depth(x,y,1,obj_bird_blue_dead)
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
	instance_destroy();
}

#endregion

#region взаимодействие с пружинами

if place_meeting(x,y,obj_abil_boots_hitbox)
{
    obj_Player.sbootsbuffer = 1;
    obj_Player.vspd = -5;
    obj_Player.dash_counts = 1;
    instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
    instance_destroy(obj_abil_boots_hitbox);
}
    
#endregion