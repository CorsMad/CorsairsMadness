/// @description Insert description here
// You can write your code in this editor

#region Коллизия

if state != 0
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

    if place_meeting(x,y+1,obj_block) grounded = 1 else grounded = 0
}   
#endregion

#region Abomination

if state = 0
{
    sprite_index = spr_abomination_idle;
    image_speed = 1;
}

if state = 1
{
    if grounded = 1
    {
        image_speed = 1;
        sprite_index = spr_abomination_idle;
    } else 
    {
        image_speed = 0;
        sprite_index = spr_abomination_jump;
        if vspd <= -0.5 image_index = 0 else image_index = 1;
        
        if hspd<0 image_xscale = 1;
        if hspd>0 image_xscale = -1;
    }
}

if state = 3
{
    image_speed = 1;
    sprite_index = spr_abomination_poss;
}



#endregion

if grounded = 1 air_hit = 0;

#region на месте
if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < 150 state = 1;t = 148;
    }
}
#endregion

#region прыжки

if state = 1
{
    
    t++;
    if place_meeting(x,y+1,obj_block) 
    {
        hspd = 0;
        if larva_cr = 1
        {
            larva_cr= 0;
            if instance_number(obj_abomination_larva) < 4 instance_create_depth(x,y,depth-1,obj_abomination_larva);
        }
    }
    if grounded = 0 larva_cr = 1;
      
    if t = 150 
    {
        if instance_exists(obj_Player)
        {
            if obj_Player.x <x hspd = 2 else hspd = -2;   
        }
        vspd = choose(-5,-6);
        t = 0
    }  
    
    if grounded = 0 
    {
        if instance_exists(obj_Player)   
        {
            if air_hit = 0 && place_meeting(x,y,obj_hitbox)
            {
                air_hit = 1;
                if obj_Player.x < x
                {
                    hspd = abs(hspd);
                } else hspd = -abs(hspd);
            }            
        }
    }
}

#endregion

#region флейта

if instance_exists(obj_abil_flute_aoe)
{
    if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 ) 
    {
        if t_flueted < 180 t_flueted++; 
    }
}
if (!place_meeting(x,y,obj_abil_flute_aoe) && t_flueted > 0) t_flueted--;

if t_flueted  > 100 flueted = 1

if flueted = 1 
{   
    state = 3;  
}

if state = 3 
{
    if t_flueted = 0 
    {
        flueted = 0; 
        state = 1;
        t = 0;
    }
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

#region смерть

if enemy_hp < 1 || place_meeting(x,y,obj_death_pit_trigger)
{
    var d = instance_create_depth(x,y,depth,obj_abomination_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}

if y > room_height+32
{
    var d = instance_create_depth(x,y,depth,obj_abomination_death);
    d.image_xscale = image_xscale;
    instance_destroy();   
}

#endregion
