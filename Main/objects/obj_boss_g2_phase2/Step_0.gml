/// @description Insert description here
// You can write your code in this editor
/*
  0 - вылез справа
  1 - Ожидание
  2 - Плевки справа
  3 - ожидание
  4 - залез назад
  5 - ожидание
  6 - полет в игрока сверху
  7 - ожидание
  8 - полет в игрока сверху1 + удаление яда
  9 - оказывается внизу + рековер 
  10 - закап

  
*/
#region Действия

if (state = 0) { // вылез справа
    sprite_index = spr_boss_g2_p2_idle;
    image_speed = 1;
    image_xscale = 1;
	x-=2;
	if x <= 448
	{
		x = 448;	
		state = 1;
	}	
}

if (state = 1) { // ожидание
    t++;
    switch(t)
    {
        case 5:sprite_index = spr_boss_g2_p2_attack;image_index = 0;image_speed=0;break;
        case 15:image_index = 1;break;
        case 20:image_index = 2;break;
        case 25:image_index = 3;break;
        
    }
	if t = 50
	{
        attack = irandom(1);
		t = 0;
		state = 2;
	}	
	
}
	
if (state = 2) { // Плевки справа
    t++;
    switch(t)
    {
        case 5:image_index = 4;break;   
        case 25:image_index = 0;break;   
    }
    if attack = 0
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -11
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -4;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 3;
                break;            
    	}
    }
    
    if attack = 1
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -21.18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -11;
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -1.7;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 3;
                break;            
    	}   
    }    
}	
    
if (state = 3) { // ожидание
    t++;
    image_speed = 1;
    sprite_index = spr_boss_g2_p2_idle;
    if t = 50
    {
        t= 0;
        state = 4;
    }
}    

if (state = 4) { // залез назад
    x+=2;
    if x >= 480+32
    {
        state = 5;
    }
}

if (state = 5) { // ожидание
    sprite_index = spr_boss_g2_p2_fly;
    t++;
    
    
    if t = 50 {y =0;x = obj_Player.x;}
    if t > 50 {if y < 48 y+=2;}
    if t = 150
    {
        t = 0;state = 6;   
    }
}
    
if (state = 6) { // Полет в игрока сверху
    y+=6;
    if y > 270+32 {
        state = 7;
    }
}    
    
if (state = 7) { // ожидание
    t++;
    
    if t = 50 {y =0;x = obj_Player.x;}
    if t > 50 {if y < 48 y+=2;} 
    if t = 150
    {
        t = 0;state = 8;   
    }
}
    
if (state = 8) { // Полет сверху2
    y+=6
    {
        if y>= 240
        {
            if instance_exists(obj_boss_g2_phase_poison2)
            {
                obj_boss_g2_phase_poison2.state = 2;   
            }
            y = 240;
            instance_create_depth(x,256,depth-1,obj_sfx4);
            sprite_index =spr_boss_g2_p2_stun;
            state = 9;
        }
    }
}    
    
if (state = 9) { // оказывается внизу + рековер
    t++;
    if t mod 10 = 0 instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_sfx_desert_boss1_stars)
    if t = 200
    {
        t = 0;
        state = 10
    }
}    

if (state = 10) { // закоп
    t++;
    y+=2;
    if t = 50
    {
        state = 10.5;
        t = 0;      
    }
}

if (state = 10.5)
{
    t++;
    if t = 50
    {
        state = 11;
        t = 0;
        x = -48;
        y = 64;
    } 
}

if (state = 11) { // вылез слева
	x+=2;
    sprite_index = spr_boss_g2_p2_idle;
    image_speed = 1;
    image_xscale = -1;
	if x >= 32
	{
		x = 32;	
		state = 12;
	}	
}

if (state = 12) { // ожидание
    t++;
    switch(t)
    {
        case 5:sprite_index = spr_boss_g2_p2_attack;image_index = 0;image_speed=0;break;
        case 15:image_index = 1;break;
        case 20:image_index = 2;break;
        case 25:image_index = 3;break;
        
    }
	if t = 50
	{
        attack = irandom(1);
		t = 0;
		state = 13;
	}	
	
}
	
if (state = 13) { // Плевки слева
    t++;
    switch(t)
    {
        case 5:image_index = 4;break;   
        case 25:image_index = 0;break;   
    }
    if attack = 0
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 11
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 4;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 14;
                break;            
    	}
    }
    
    if attack = 1
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 19.8;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 10.5;
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 1.2;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 14;
                break;            
    	}   
    }    
}	
    
if (state = 14) { // ожидание
    t++;
    image_speed = 1;
    sprite_index = spr_boss_g2_p2_idle;
    if t = 50
    {
        t= 0;
        state = 15;
    }
}    

if (state = 15) { // залез назад
    x-=2;
    if x <= -32
    {
        state = 16;
    }
}

if (state = 16) { // ожидание
    t++;
    
    sprite_index = spr_boss_g2_p2_fly;
    if t = 50 {y =0;x = obj_Player.x;}
    if t > 50 {if y < 48 y+=2;}  
    if t = 150
    {
        t = 0;state = 17;   
    }
}
    
if (state = 17) { // Полет в игрока сверху
    y+=6;
    if y > 270+32 {
        state = 18;
    }
}    
    
if (state = 18) { // ожидание
    t++;
    if t = 50 {y =0;x = obj_Player.x;}
    if t > 50 {if y < 48 y+=2;}  
    if t = 150
    {
        t = 0;state = 19;   
    }
}
    
if (state = 19) { // Полет сверху2
    y+=6
    {
        if y>= 240
        {
            if instance_exists(obj_boss_g2_phase_poison2)
            {
                obj_boss_g2_phase_poison2.state = 2;   
            }
            y = 240;
            state = 20;
            instance_create_depth(x,256,depth-1,obj_sfx4);
            sprite_index =spr_boss_g2_p2_stun;
        }
    }
}    
    
if (state = 20) { // оказывается внизу + рековер
    t++;
    if t mod 10 = 0 instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_sfx_desert_boss1_stars)
    if t = 200
    {
        t = 0;
        state = 21
    }
}    

if (state = 21) { // закоп
    t++;
    y+=2;
    if t = 50
    {
        state = 22;
        t = 0;
    }
}

if (state = 22) {
    t++;
    if t = 50
    {
        state = 0;
        t = 0;
        x = 480+48;
        y = 64;
    }
}
  
#endregion  
    
#region TAKEDMG

if (state = 5 && t < 50) || (state = 16 && t < 50) || state = 22 || state = 11.5       
{
    mask_index = noone   
} else mask_index = spr_boss_g2_phase1_mask;

if state = 0 mask_index = noone else mask_index = spr_boss_g2_phase1_mask;

if state!=0
{
         // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    fnc_enemy_no_armor_dmg();
}

if enemy_hp <= 0
{
    var d = instance_create_depth(x,y,depth,obj_boss_g2_phase2_death)
    d.image_xscale = image_xscale;
    instance_destroy();
}


#endregion    