/// @description Insert description here
// You can write your code in this editor

#region Коллизия

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

    if place_meeting(x,y+1,obj_block) grounded = 1 else grounded = 0
  
#endregion

#region Перемещение
t++;
if t = 60
{
    vspd = -2;
    t = 0;
}

#endregion

#region Получение уронв

    // Атака
        
        fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1)

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

if enemy_hp < 1 instance_destroy();

#endregion