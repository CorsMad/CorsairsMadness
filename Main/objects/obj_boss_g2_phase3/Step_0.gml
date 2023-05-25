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
    
}

if (state = 1) { //ожидание
    t++;
    if t = 50
    {
        t = 0;
        state = 2;
    }
}

if (state = 2) { //стрельба в игрока плевками вверх/вниз
    t++;
    switch(t)
    {
        case 40: 
            instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_forward);
            break;
        case 80: 
            instance_create_depth(x,y+48,depth-1,obj_boss_g2_phase_poison_forward);
            t = 0;
            break;
        
    }
    
    if instance_exists(obj_abil_flute_aoe)
    {
        if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 ) 
        {
            if t_flute < 180 t_flute++; 
        }
    }
    if (!place_meeting(x,y,obj_abil_flute_aoe) && t_flute > 0) t_flute--;
    
    if t_flueted  > 100 {state = 3;t = 0;}
    
}

if (state = 3) { // под флейтой
    
}

if (state = 4) { // под флейтой
    // code here
}

if (state = 5) { // очух
    // code here
}