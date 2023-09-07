/// @description Insert description here
// You can write your code in this editor

if place = 0
{
	if isAttacking = 0
	{
		sprite_index = spr_frozenmage_idle;	
	}
	
    if (abs(obj_Player.x-x) <128 && abs(obj_Player.y-y) < 128) && isAttacking = 0
    {
        isAttacking = 1;  
		image_index = 0;
    }
	
	if isAttacking = 1
	{
		sprite_index = spr_frozenmage_attack;
	    t++;
	    if t = 120 
		{
			instance_create_depth(x,y,depth-1,obj_frozen_mage_missle);
		} // выстрел
	    if (image_index > image_number - 1) 
		{
	        t = 0;
	        isAttacking = 0;
	        place = 1
	        place_goto = irandom(place_max);			
			image_index = 0;
	    }
	}
}

if place = 1 
{
	sprite_index = spr_frozenmage_idle;
    t++;
    if t = 100
    {
        t = 0;
        place = 2;
		sprite_index = spr_frozenmage_hide;
		image_index = 0;
    } 
    //invis   
}

if place = 2 // переход
{
	
    
    if (image_index > image_number - 1) 
	{
        place = 3;
        switch(place_goto)
        {
            case 0: x = pg0x; y = pg0y; break;
            case 1: x = pg1x; y = pg1y; break;
            case 2: x = pg2x; y = pg2y; break;
            case 3: x = pg3x; y = pg3y; break;
        }	
		sprite_index = spr_frozenmage_appear;;
		image_index = 0;
    }
}

if place = 3 // появление
{
	
	if (image_index > image_number - 1) 
	{
		place = 0;		
		sprite_index = spr_frozenmage_idle;
		image_index = 0;
	}
}



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

#region death
if enemy_hp<=0
{
    var death = instance_create_depth(x,y,depth,obj_frozen_mage_death)   ;
    death.sprite_index = sprite_index;
    death.image_index = image_index;
    instance_destroy(oleg);
    instance_destroy();
}
#endregion