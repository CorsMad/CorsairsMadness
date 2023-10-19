/// @description Insert description here
// You can write your code in this editor

/*
  0 - появление
  1 - ожидание
  2 - стрельба в игрока плевками вверх/вниз
  3 - если близко игрок, то бьёт по земле хвостом (кд на дуар хвостом)
  4 - под влиянием флейты 
  5 - очухивание 
*/

if (state = 0) { //появление
    if y >192 y-=2;
    if y <=192
    {
        t++;
        switch(t)
        {
            case 5: image_index = 1;break;   
            case 10: image_index = 2;break;   
            case 15: t = 0;state = 1;break;   
        }
    }
}

if (state = 1) { //ожидание
    t++;
    if t = 50
    {
        t = 0;
        state = 2;
        sprite_index = spr_boss_g2_p3_attack;
        image_speed = 0;
        image_index = 0;
    }
}

if (state = 2) { //стрельба в игрока плевками вверх/вниз
    t++;
    switch(t)
    {
        case 1: image_index = 1;break;  
        case 5: image_index = 2;break;  
        case 10: image_index = 3;break;  
        case 15: image_index = 4;instance_create_depth(x-10,y,depth+1,obj_boss_g2_phase_poison_forward);break;  
        case 20: image_index = 5;mov = 1;break;
    }
    
    if mov = 1
    {
        if pos = 0 
        {
            y+=2;   
            if y>=240 
            {
                y = 240;
                mov = 0;
                pos = 1
                t = 0;
            }
        }
        if pos = 1 
        {
            y-=2;   
            if y<=192 
            {
                y = 192;
                mov = 0;
                pos = 0;
                t = 0;
            }
        }
    }
    
    if instance_exists(obj_abil_flute_aoe)
    {
        if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 ) 
        {
            if t_flute < 180 t_flute++; 
        }
    }
    if (!place_meeting(x,y,obj_abil_flute_aoe) && t_flute > 0) t_flute--;
    
    if t_flute > 100 {state = 3;fnc_snd_play_onetime(snd_enemy_get_flute); t = 0;}
    
}

if (state = 3) { // под флейтой
    t++;
    sprite_index = spr_boss_g2_p3_stun;
    image_speed = 1;
    if t mod 10 = 0 instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_sfx_desert_boss1_stars)  
    if t = 300
    { 
        t = 0;
        state = 4;
    }
}

if (state = 4) { // очух
    t++;
    sprite_index = spr_boss_g2_p3_attack;
    image_index = 0;
    image_speed = 0;
    if t = 50 {
        image_index = 0;
        t = 0;state=2;   
    }
}


#region TAKEDMG

if state = 0 mask_index = noone else mask_index = spr_boss_g2_phase1_mask;

if state!=0
{
         // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,0)
    fnc_enemy_no_armor_dmg();
}

if enemy_hp <= 0
{
    var d = instance_create_depth(x,y,depth,obj_boss_g2_phase3_death)
    d.image_xscale = image_xscale;
    instance_destroy();
}


#endregion    