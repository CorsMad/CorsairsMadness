/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	if place_meeting(x,y+spd,obj_bird_limiter)
	{
		spd = -spd;	
	}
	y+=spd;
	
	if x > obj_Player.x
	{
		image_xscale = -1;	
	} else image_xscale = 1;
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
	instance_create_depth(x,y,1,obj_bird_green_dead)
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
	instance_destroy();
}

#endregion