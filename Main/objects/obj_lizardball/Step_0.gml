/// @description Insert description here
// You can write your code in this editor


#region Коллизии

if place_meeting(x+hspd, y, obj_block)
    {
        while (!place_meeting(x+sign(hspd), y, obj_block )) 
        {
        	x+= sign(hspd);
        }
        hspd = 0;   
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
        

#endregion

#region Ходьба влево вправо

if state = 0
{
    if place_meeting(x+hspd,y,obj_block)
    {
        hspd = -hspd;   
    }
    /*
    if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
	{
		hspd = -hspd;
	}
    */
    // Встреча с игроком
    
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 160 
    {
        state = 2;
        t = 0;
        hspd = 0;
        image_index = 0;
    }  
    
    //Анимац
    image_speed = 1;
    sprite_index = spr_lizard_walk;
    if hspd>0 image_xscale = 1;
    if hspd<0 image_xscale = -1;
    
}


#endregion

#region Разворачивание

if state = 1
{
    // Анимация разворачивания
    t++;
    image_speed = 1;
    if t = 11
    {
        
        t = 0;
        state = 0;
        
        hspd = choose(-1,1);
    }     
}

#endregion

#region Сворачивание

if state = 2
{
    // Играет анимация
    sprite_index = spr_lizard_svor;
    if image_index = 1 image_speed = 0;    
    
    
    // Игрок далеко
    
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis > 200 
    {
        state = 1;
        t = 0;
        hspd = 0;
    }       
}


#endregion

#region Переворачивается на ноги

if state = 5
{
    // играет анимация переворота на ноги
    t++;
    sprite_index = spr_lizard_turn;
    if t < 5 image_index = 0; else image_index = 1;
    if t = 10 {state = 0;t = 0;hspd = choose(-1,1)}
}

#endregion

#region Полет после удара

if state = 6 
{
    sprite_index = spr_lizard_kat;
    image_speed = 1;
    if place_meeting(x,y+abs(vspd),obj_block) {state = 8; hspd = 0; vspd = 0;}
    else if place_meeting(x+hspd, y, obj_block) {hspd = -hspd;}   
    else if place_meeting(x,y-abs(vspd), obj_block) {vspd = -vspd;}
}

#endregion

#region Катится по прямой

if state = 7
{
    image_speed = 1;
    sprite_index = spr_lizard_kat;
    if place_meeting(x+(hspd),y,obj_block) {hspd = 0;state = 8;}
}

#endregion

#region После пружины

if state = 9
{
    sprite_index = spr_lizard_kat;
    hspd = 0;
    image_speed = 2;
    if place_meeting(x,y+1,obj_block)
    {
        state = 8;   
    }
}

#endregion

#region Находится в стане

if state = 8
{
    sprite_index = spr_lizard_stun;
    image_speed = 1;
    //анимация стана
    t++; 
    if t = 100
    {
        t = 0;
        image_index = 0;
        state = 5;
    }
}

#endregion

#region получение урона

    if hit_cd > 0 
    {
    	hit_cd+=1;	
    }
    if hit_cd > 11 
    {
    	hit_cd = 0;	
    }

if t_red != 0 {image_blend = c_red;t_red++;}
if t_red >= 8 {image_blend = c_white;t_red = 0;}

// Атака

    if place_meeting(x,y,obj_abil_boots_hitbox)
    {
        obj_Player.vspd = -6;
        obj_Player.sbootsbuffer = 1;
        if place_meeting(x,y+1,obj_block) vspd = -3;
        obj_Player.dash_counts = 1;
        instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
        instance_destroy(obj_abil_boots_hitbox);
        state = 9;
        t = 0;
    }

    if place_meeting(x,y,obj_hitbox) && hit_cd = 0 
    {
        if obj_Player.x < x 
		{
			instance_create_depth(x+4,y+8,depth,obj_sfx_weapon_slash);
		} else instance_create_depth(x-4,y-8,depth,obj_sfx_weapon_slash);
        if state != 8 
        {
            state = 6;
            if instance_exists(obj_Player)
            {
                if obj_Player.x >= x
                {
                    hspd = -3;
                } else hspd = 3;
            }
            vspd = -3;
            enemy_hp -= 1;
            if obj_Player.x < x 
    		{
    			instance_create_depth(x+4,y+8,depth,obj_sfx_weapon_slash);
    		} else instance_create_depth(x-4,y-8,depth,obj_sfx_weapon_slash);
        }
        else {
            if instance_exists(obj_Player)
            {
                if obj_Player.x >= x
                { 
                    hspd = -3;
                } else hspd = 3;
            }
            state = 7;
            
            enemy_hp -= 2;}
        t = 0;
        t_red = 1;
        hit_cd = 1;
        
    }
    
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   
    if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0 
    {
        if state != 8 
        {
            state = 6;
            if instance_exists(obj_Player)
            {
                if obj_Player.x >= x
                {
                    hspd = -4;
                } else hspd = 4;
            }
            vspd = -4;
            enemy_hp -= 1;
        }
        else {state = 7;hspd = 4;vspd = 0;enemy_hp -= 4;}
        t = 0;
        t_red = 1;
        hit_cd = 1;
        obj_Player.isAttackingdown = 0;
    	obj_Player.attackingdown_timer = 0;
    	obj_Player.vspd = -5;    
        if obj_Player.x < x 
		{
			instance_create_depth(x+4,y+8,depth,obj_sfx_weapon_slash);
		} else instance_create_depth(x-4,y-8,depth,obj_sfx_weapon_slash);
        
    }
    

// Получение урона

    //fnc_enemy_no_armor_dmg();

#endregion

#region Смерть
if enemy_hp <= 0
{
    instance_destroy();
    var d = instance_create_depth(x,y,depth,obj_llizardball_death);
    d.vspd = -3;
    if obj_Player.x<x d.hspd = 2; else d.hspd = -2;
}
#endregion