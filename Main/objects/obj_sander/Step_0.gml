/// @description Insert description here
// You can write your code in this editor

#region Коллизии
if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
		{
			spd = -spd;
		}
		if place_meeting(x+spd,y,obj_block)
		{
			while(!place_meeting(x+sign(spd),y,obj_block))
			{
				x = x+sign(spd);	
			}
			spd = -spd;
		}
		x = x+spd;
#endregion

#region патрулирование

if state = 0
{
    t++;
    
        if spd > 0 
        {
            mov = 1   
        }
    
        if spd < 0 
        {
            mov = -1;   
        }
    
        if t = 180
        {
            spd = 0;
            image_index = 0;
        }
    
        if t = 300
        {
            t = 0;
            image_index = 0;
            if mov = 1
            {
                spd = -0.25;
            } else spd = 0.25;
        }
        
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
	if dis<80 
	{    
        state = 1;
        t = 0;
        mov = 0;
        spd = 0;
        image_index = 0;
    }
    
    #region Аним
    
    if spd = 0 sprite_index = spr_sander_idle;// else sprite_index = spr_sander_walk;
    if spd != 0 sprite_index = spr_sander_walk;
    
    if spd > 0 image_xscale = -1;
    if spd < 0 image_xscale = 1;
    
    image_speed = 1;
    #endregion
}

#endregion

#region спрятаться

if state = 1 
{
    sprite_index = spr_sander_hide;
    t++;
    hide = 1;
    switch(t)
    {
        case 30: image_speed = 0;break;
        case 60:
            
            spd = choose(-3,3);
            t = 0;
            state = 2; 
            break;
    }
}
#endregion

#region перемещение под землей

if state = 2
{
    sprite_index = spr_sander_hide_walk;
    image_speed = 1;
    t++;  
    if t = 150
    {
        t = 0;
        spd = 0;
        state = 3;
        image_index = 0;
        image_speed = 0;
    }
}
#endregion

#region показаться

if state = 3
{
    t++;
    // анимация
    switch(t)
    {
        case 30:image_speed = 1;sprite_index = spr_sander_unhide;break;       
        case 60: 
            image_speed = 0;
            hide = 0;
            spd = 0;
            t = 0;
            state = 4;
            sprite_index = spr_sander_attack;
            image_index = 0;

            break;
    }
}

#endregion

#region атака

if state = 4
{
    if instance_exists(obj_Player)
    {
        if obj_Player.x > x image_xscale = -1;   
        if obj_Player.x < x image_xscale = 1;   
    }
    
    
    image_speed = 1;
    t++;
    //анимация атаки
    if (t = 50 || t = 110) 
    {
        instance_create_depth(x-sign(image_xscale)*8,y-22,depth-1,obj_sander_projectile);
    }
    if t = 140
    {
        t = 0;
        state = 5;
        sprite_index = spr_sander_idle;
        image_index = 0;
    }
}

#endregion

#region ожидание

if state = 5
{
    t++;
    //ожидание
    sprite_index = spr_sander_idle;
    if t = 60
    {
        state = 0;
        t = 0;
    }
    
}
#endregion

#region #takedmg
if hide = 0
{
// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
}
#endregion

#region Смерть
if enemy_hp < 1
{
    instance_destroy();    
    var d = instance_create_depth(x,y,depth,obj_sander_dead);
    d.image_xscale = image_xscale;
}
#endregion

#region СТрела

var def = instance_place(x,y,obj_abil_arbalet_proj)
if def!= noone && (state = 0 || state = 4 || state = 5)
{
    def.isDead = 1;
}
#endregion