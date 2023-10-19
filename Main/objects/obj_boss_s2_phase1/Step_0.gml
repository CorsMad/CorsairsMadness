/// @description Insert description here
// You can write your code in this editor
/*
 -1 - появление
  0 - преследование
  0.5 - ожидание перед атакой
  1 - если игрок рядом - 2 удара вперед с выпадами
  2 - если игрок рядом и наверху - размашистый удар кольцом
  3 - ожидание
  4 - отпрыгивание назад, если далеко от стены
  5 - отпрыгивание вперед 2 раза если рядом со стеной
  6 - ожидание ->0
*/

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
#endregion




if (state = -1) { // появление
    t++;
    image_speed = 0.75;
    if t = 50
    {
        t = 0;
        state = 0;
    }
}

if (state = 0) { // преследование
    if instance_exists(obj_Player)
    {
        if obj_Player.x < x hspd = -2;else hspd = 2;           
        sprite_index = spr_boss2_snow_run;
        if hspd!=0 image_xscale = -sign(hspd);
        image_speed = 0.5;
        if (abs(obj_Player.x - x) < 64)
        {
            state = 0.5;  
            hspd = 0;
            image_speed = 0;
            sprite_index = spr_boss2_snow_attack_forward;
            image_index = 4;            
        }
    }
}

if (state = 0.5) { // Ожидание перед атакой
    t++;
    switch(t)
    {
        case 5:  
            sprite_index = spr_boss2_snow_idle;
            image_index = 0;
            break;
        case 10:
            t = 0;
            if (abs(obj_Player.x-x) < 48 && abs(obj_Player.y - y) > 16) {
                state = 2;
                image_index = 0;
                image_speed = 0;
                sprite_index = spr_boss2_snow_attack_round;
            } else {
                state = 1;
                sprite_index = spr_boss2_snow_attack_forward;
                image_index = 0;
                image_speed = 0;
            }
            break;
            
    }
}

if (state = 1) { // 2 удара вперед с выпадом    
    t++;
    if t > 99 && t < 130
    {
        if t mod 10 = 0 instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small)   ;
    }
    
    switch(t)
    {
        case 5: image_index = 1;break;   
        case 10: image_index = 2;break;   
        case 15: image_index = 3;break;   
        case 40: image_index = 4;break;   
        case 45: 
            image_index = 5;
            fnc_snd_play_onetime(snd_enemy_boss2_attack);
            var hitbox = instance_create_depth(x,y,depth,obj_boss_s2_phase1_attack1_1);
            hitbox.image_xscale = image_xscale;
            break;   
        case 50: image_index = 6;break;   
        case 55: 
            instance_destroy(obj_boss_s2_phase1_attack1_1);
            image_index = 7;
            break;   
        case 60: image_index = 4;break;   
        case 100: 
            if obj_Player.x < x hspd = -2 else hspd = 2;
            fnc_snd_play_onetime(snd_enemy_boss2_attack);
            var hitbox2 = instance_create_depth(x,y,depth,obj_boss_s2_phase1_attack1_2);
            hitbox2.image_xscale = image_xscale;
            image_index = 5;
            break;   
        case 105: image_index = 6;break;   
        case 110: image_index = 8;break;   
        case 115: image_index = 9;break;   
        case 130: 
            instance_destroy(obj_boss_s2_phase1_attack1_2);
            hspd = 0;
            image_index = 4;
            break;
        case 140:
            sprite_index = spr_boss2_snow_idle;
            image_index = 0;
            image_speed = 0.5;
            break;   
        case 150:   
            t = 0;
            state = 3;
            break;
    }  
    
    if t < 100 && t > 60 
    {
        if obj_Player.x > x image_xscale = -1 else image_xscale = 1;   
    }
    
}

if (state = 2) { // размашистый удар
    sprite_index = spr_boss2_snow_attack_round;
    t++;
    switch(t)
    {
        case 30:    image_index = 1;break;   
        case 35:    
        fnc_snd_play_onetime(snd_enemy_boss2_attack);
            var hitboxup = instance_create_depth(x,y,depth,obj_boss_s2_phase1_attack2);
            hitboxup.image_xscale = image_xscale;
            image_index = 2;
            break;   
        case 40:    image_index = 3;break;   
        case 45:    image_index = 4;break;   
        case 50:    
        image_index = 5;
        instance_destroy(obj_boss_s2_phase1_attack2);
        break;   
        case 70:    
            t = 0;
            state = 3;
            sprite_index = spr_boss2_snow_idle;
            image_index = 0;
            image_speed = 0.5;
            break;   
    }
    
}
    
if (state = 3) { // Ожидание
    t++;
    if t = 50
    {
        image_index = 0;
        image_speed = 0;
        if obj_Player.x < x
        {
            if x>=384 {hspd=-2;vspd=-6;state=5;} else {hspd=3;vspd=-5;state=4;}            
        } else {
            if x<=96  {hspd=2;vspd=-6;state=5;} else {hspd=-3;vspd=-5;state=4;}      
        }
        t = 0;
    }
}    

if (state = 4) { // отпрыгивание назад, если далеко от стены
    t++;
    if hspd!=0 image_xscale = -sign(hspd);
    image_speed =0;
    
    sprite_index = spr_boss2_snow_jump;
    if vspd < 1 image_index = 0; else image_index = 1;
    
    if place_meeting(x,y+1,obj_block) && t > 5
    {
        hspd = 0;
        vspd = 0;
        state = 6;
        t = 0;
    }
}

if (state = 5) { // отпрыгивание вперед 2 раза если рядом со стеной
    t++;
    if hspd!=0 image_xscale = -sign(hspd);
    image_speed =0;
    
    sprite_index = spr_boss2_snow_jump;
    if vspd < 1 image_index = 0; else image_index = 1;
    if place_meeting(x,y+1,obj_block) && t > 5
    {
        t=0;
        vspd = -4;
        state = 5.5;
    }
}

if (state = 5.5) { // отпрыгивание вперед 2 раза если рядом со стеной
    t++;
    image_speed =0;
    if hspd!=0 image_xscale = -sign(hspd);
    sprite_index = spr_boss2_snow_jump;
    if vspd < 1 image_index = 0; else image_index = 1;
    if place_meeting(x,y+1,obj_block) && t > 5 {
        hspd = 0;
        vspd = 0;
        t = 0;
        state = 6;
    }
}
    
if (state = 6) { // Ожидание
    t++;
    sprite_index = spr_boss2_snow_idle;
    image_speed = 0.5;
    if t = 10 {
        state = 0;
        t = 0;
    }   
}    
    
    
#region Получение урона
    // получение урона
    	 
// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,0)

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
    

// Получение урона

    fnc_enemy_no_armor_dmg();
	
	if t_red!=0 t_red++;
	if t_red = 5 t_red = 0;

#endregion 


#region Смерть
if enemy_hp <=0 
{
    var d = instance_create_depth(x,y,depth,obj_boss_s2_phase1_death);
    d.image_xscale = image_xscale;
            
    instance_destroy();    
}
#endregion