/// @description Insert description here
// You can write your code in this editor
#region Перемещение
if state != 2
{
    

	if place_meeting(x+hspd, y, obj_block)
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block)
	{
		vspd +=0.2;	
	}
}
#endregion

if state = 0 
{
    if hspd > 0 image_xscale = 1;
    if hspd < 0 image_xscale = -1;
    sprite_index = spr_snake_fast_move;
    if instance_exists(obj_Player)
    {
        if (abs(obj_Player.x - x) < 200 && abs(obj_Player.y - y) < 32) 
        {
            state = 1;
            hspd = hspd*4;
            sprite_index = spr_snake_fast;
        }
    }
}

if state = 1
{
    if hspd > 0 image_xscale = 1;
    if hspd < 0 image_xscale = -1;
}

if state = 2
{
    sprite_index = spr_snake_fast_boom;
    image_speed = 3;
}

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region Смерть
if enemy_hp < 1 
{
    instance_destroy();
    
}
#endregion