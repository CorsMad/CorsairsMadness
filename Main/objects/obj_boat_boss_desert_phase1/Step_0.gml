depth = -y;          
/// @description Insert description here
// You can write your code in this editor
/*
    Phase 0 - появление
    Phase 1 - 
        state 1 - перемещение туда сюда и периодические выстрелы по прямой
        state 2 - перемещение к точке где герой и выстрел двумя проджектайлами
        state 3 - сосредотачивается на герое, потом быстро плывает в его сторону и обратно.
    Phase 2 - 
        state 1 - Перемещение вверх вниз и перидоические выстрелы в игрока
        state 2 - Фокусирование на середине и серия выстрелов вверх или вниз выстрелами, которые отражаются
        state 3 - Переход вверх или вниз выстрел большим лучем
*/

if (phase = 1) { // Фаза1  
    switch(state)
    {
        case 1:
            #region перемещение туда сюда и периодические выстрелы по прямой            
                x+=hspd;
                y+=vspd;
                t++;
                t1++;
                if t1 = 60 t1 = 0;
                // Графен
                sprite_index = spr_boat_boss_desert_attack1;
                                
                    switch(t1)
                    {
                        case 1:  image_index = 0;break;
                        case 10: image_index = 1;instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st1);break;   
                        case 15: image_index = 2;break;   
                        case 20: image_index = 3;break;   
                        case 25: image_index = 4;break;   
                        case 30: image_index = 3;break;   
                        case 35: image_index = 4;break;   
                        case 40: image_index = 3;break;
                        case 45: image_index = 4;break;
                        case 50: image_index = 5;break;
                        case 55: image_index = 6;break;
                    }
                
                                                                
                // Смена верт
                if (place_meeting(x,y+vspd,obj_bird_horizontal_limiter)) {
                    vspd = -vspd;
                }                
            
            if t = 300
            {
                t1 = 0;
                t = 0;
                state = next_state;
                sprite_index = spr_boat_boss_desert_attack2;
                image_index = 0;
            }

            #endregion                  
            break;
        case 2:
            #region перемещение к точке где герой и выстрел двумя проджектайлами
                if t < 100 y=lerp(y,obj_Player_boat.y-16,0.05);  
                
                //графен
                t1++;
                switch(t1)
                {
                    case 1:     image_index = 0;break;  
                    case 5:     image_index = 1;break;  
                    case 10:    image_index = 2;break;  
                    case 15:   
                    var el = instance_create_depth(x-36,y,depth-1,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow));
                    var er = instance_create_depth(x+42,y,depth-1,choose(obj_sfx_electricity_follow,obj_sfx_electricity2_follow));
                    el.fol = id;
                    er.fol = id;
                    el.image_speed = 2;
                    er.image_speed = 2;
                    el.folx = -36
                    el.foly = 0;
                    er.folx = 42
                    er.foly = 0;
                    
                    image_index = 3;
                    break;  
                    case 20:    image_index = 4;break;  
                    case 25:    image_index = 5;break;
                    case 30:    image_index = 6;break;
                    case 50:    image_index = 0;
                }
                if (t1 = 21 && t < 140) t1 = 14;
                
                t++;
                switch(t)
                {
                    case 15: 
                        var pu = instance_create_depth(x,y-48,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        var pd = instance_create_depth(x,y+48,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        pu.foly = -48;
                        pd.foly = 48;
                        // выстрел джвумя проджектайлами
                        break;
                    case 200:
                        t = 0;
                        state = 1;
                        t1 = 0;
                        sprite_index = spr_boat_boss_desert_attack1;;
                        image_index = 0;
                        next_state = 3;
                        vspd = choose(-1,1);
                        break;
                }
            #endregion
            break;
        case 3:
            #region сосредотачивается на герое, потом быстро плывает в его сторону и обратно.
                t++;
                if t < 100 y=lerp(y,obj_Player_boat.y-16,0.05);  
                x+=hspd;
                t++;
                sprite_index = spr_boat_boss_desert_attack_run;
                image_speed = 0;
                if hspd!=0
                {
                    if t mod 10 = 0 instance_create_depth(x,y+24,depth-1,obj_sfx_watersplash_boss)   ;
                }
                
                switch(t)
                {              
                    case 5:    image_index = 1;break;
                    case 10:   image_index = 2;break;
                    case 15:   image_index = 3;break;
                    case 20:   image_index = 4;break;
                    case 25:   image_index = 5;break;
                    case 30:   image_index = 6;break;
                    case 35:   image_index = 7;break;
                    case 40:   image_index = 8;break;
                    case 45:   image_index = 9;break;
                    case 50:   image_index = 10;break;
                    case 60:   image_index = 11;break;
                    case 240:  image_index = 12;break;                        
//-100
                    case 250:
                        image_index = 13;
                        hspd = -6;
                        break;  
                    case 400:   image_index = 11;break;   
                    case 600:   image_index = 10;break;
                    case 605:   image_index = 9;break;
                    case 610:   image_index = 8;break;
                    case 615:   image_index = 7;break;
                    case 620:   image_index = 6;break;
                    case 625:   image_index = 5;break;
                    case 630:   image_index = 4;break;
                    case 635:   image_index = 3;break;
                    case 640:   image_index = 2;break;
                    case 645:   image_index = 1;break;            
                    case 650: 
                        image_index = 0;
                        t = 0;
                        hspd = 0;
                        next_state = 2;
                        state = 1;
                        vspd = choose(-1,1);
                        break;
                }
                if (hspd < 0 && x <= 6) hspd = 6;
                if (hspd > 0 && x >= 432) { hspd = 0; }
                if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
                {
                    obj_Player_boat.hit_cd = 1; 
                    global.hp-=1;
                } 
            
            #endregion
            break;
    }
}
    
    
#region Попадание
/*
fnc_boat_take_dmg_pistol(random_range(-16,8),random_range(-16,16),depth-1000,random_range(-16,8),random_range(-16,16),depth-1000)
fnc_boat_take_dmg_parrotcage(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_blunderbuss(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_fastshot(random_range(-16,8),random_range(-16,16),depth-1000);
*/

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.3)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.25) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(4) 


if enemy_hp <=0
{
    instance_destroy(obj_boat_boss_desert_proj_ph1_st1);
    instance_destroy(obj_boat_boss_desert_proj_ph1_st2);
    instance_destroy();
    var d = instance_create_depth(x,y,depth,obj_boat_boss_desert_phase1death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
}

#endregion   