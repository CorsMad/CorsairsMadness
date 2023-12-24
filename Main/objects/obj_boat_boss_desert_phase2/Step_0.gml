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

    
if (phase = 2) { // Фаза2
    switch(state)
    {
        case 1:
            #region Перемещение вверх вниз и перидоические выстрелы в игрока
            x+=hspd;
                y+=vspd;
                t++;
                t1++;
                if t1 = 81 t1 = 0;
                // Графен
                sprite_index = spr_boat_boss_desert_attack1;
                
                switch(t1)
                {
                    case 1:  image_index = 0;break;
                    case 10: image_index = 1;break;   
                    case 15: image_index = 2;break;   
                    case 20: image_index = 3;break;   
                    case 25: image_index = 4;break;   
                    case 30: image_index = 3;break;   
                    case 35: image_index = 4;instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3);break;   
                    case 40: image_index = 3;break;
                    case 45: image_index = 4;break;
                    case 50: image_index = 3;break;
                    case 55: image_index = 4;break;
                    case 60: image_index = 3;break;
                    case 65: image_index = 4;break;
                    case 70: image_index = 3;break;
                    case 75: image_index = 5;break;
                    case 80: image_index = 6;break;
                }
                // Смена верт
                if (place_meeting(x,y+vspd,obj_bird_horizontal_limiter)) {
                    vspd = -vspd;
                }
                
                if t = 680
                {
                    t = 0;
                    t1 = 0;
                    ph2st2 = irandom(5);
                    state = next_state;   
                }                              
            #endregion
            break;
        case 2:
            #region Фокусирование на середине и серия выстрелов вверх или вниз выстрелами, которые отражаются            
            if point_distance(x, y, 432, 192) > 1
            {
                sprite_index = spr_boat_boss_desert_idle;
                image_speed = 1;
                move_towards_point(432, 192, 1);
            }
            else {
                sprite_index = spr_boat_boss_desert_attack1;
                image_speed = 0;
                t++;
                speed = 0;
            }
            
            // Графен
            switch(t)
            {
                case 1:     image_index = 1;break;
                case 5:     image_index = 2;break;
                case 10:    image_index = 3;break;
                case 15:    image_index = 4;break;
                case 20:    image_index = 3;break;
                case 25:    image_index = 4;break;
                case 30:    image_index = 3;break;
                case 35:    image_index = 4;break;
                case 40:    image_index = 3;break;
                case 45:    
                            var firefol = instance_create_depth(x-36,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2v_cr);
                            firefol.fol = id;
                            image_index = 5;
                            break;
                case 150:   image_index = 6;break;
                case 155:   image_index = 1;break;
                
                case 201:   image_index = 1;break;
                case 205:   image_index = 2;break;
                case 210:   image_index = 3;break;
                case 215:   image_index = 4;break;
                case 220:   image_index = 3;break;
                case 225:   image_index = 4;break;
                case 230:   image_index = 3;break;
                case 235:   image_index = 4;break;
                case 240:   image_index = 3;break;
                case 245:   
                            var firefol = instance_create_depth(x-36,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2v_cr);
                            firefol.fol = id;
                            image_index = 5;
                            break;
                case 350:   image_index = 6;break;
                case 355:   image_index = 1;break;
                
                case 401:   image_index = 1;break;
                case 405:   image_index = 2;break;
                case 410:   image_index = 3;break;
                case 415:   image_index = 4;break;
                case 420:   image_index = 3;break;
                case 425:   image_index = 4;break;
                case 430:   image_index = 3;break;
                case 435:   image_index = 4;break;
                case 440:   image_index = 3;break;
                case 445:   
                            var firefol = instance_create_depth(x-36,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2v_cr);
                            firefol.fol = id;
                            image_index = 5;
                            break;
                case 550:   image_index = 6;break;
                case 555:   image_index = 1;break;

            }
            
            
            // выстрелы 
            if t > 50 && t < 150
            {
                if t mod 5 = 0
            {
                switch(ph2st2)
                {
                    case 0:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = -3;                      
                        break;
                    case 1:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = -4;
                        break;
                    case 2:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = -3;
                        break;
                    case 3:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = 3;                      
                        break;
                    case 4:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = 4;
                        break;
                    case 5:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = 3;
                        break;
                }              
            }
                if t = 149 {
                    ph2st2 = irandom(5);   
                }
            }
            if t > 250 && t < 350
            {
                if t mod 5 = 0
            {
                switch(ph2st2)
                {
                    case 0:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = -3;                      
                        break;
                    case 1:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = -4;
                        break;
                    case 2:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = -3;
                        break;
                    case 3:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = 3;                      
                        break;
                    case 4:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = 4;
                        break;
                    case 5:
                        var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = 3;
                        break;
                }              
            }
                if t = 349 {
                    ph2st2 = irandom(5);   
                }
            }
            if t > 450 
            {
                if t < 550
                {
                    if t mod 5 = 0
                    {
                        switch(ph2st2)
                    {
                        case 0:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -2;                      
                            v.vspd = -3;                      
                            break;
                        case 1:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -3;
                            v.vspd = -4;
                            break;
                        case 2:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -4;
                            v.vspd = -3;
                            break;
                        case 3:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -2;                      
                            v.vspd = 3;                      
                            break;
                        case 4:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -3;
                            v.vspd = 4;
                            break;
                        case 5:
                            var v = instance_create_depth(x-44,y-4,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                            v.hspd = -4;
                            v.vspd = 3;
                            break;
                    }              
                    }
                }
                
                if t = 570 {
                    ph2st2 = irandom(5); 
                    t = 0;
                    state = 1;
                    next_state = 3;
                    vspd = choose(-1,1);
                }
            }
            
            /*
            switch(t)
            {
                case 50:
                    // создание серии выстрелов
                    
                    break;
                case 150:
                    t = 0;
                    state = 1;
                    next_state = 3;
                    vspd = choose(-1,1);                     
                    break;
            }  
            
            */
            #endregion
            break;
        case 3:
            #region Переход вверх или вниз выстрел большим лучем
            if ph2st = 0
            {
                if point_distance(x, y, 432, 192) > 1
                {
                    sprite_index = spr_boat_boss_desert_idle;
                    image_speed = 1;
                    move_towards_point(432, 192, 1);
                }
                else {
                    ph2st = 1;
                    speed = 0;
                }
            }
            
            if ph2st = 1
            {
                t++;
                y-=1;
                if y <= 144{
                    y = 144;
                    ph2st = 2;
                    t = -50;
                    sprite_index = spr_boat_boss_desert_attack3;
                    image_speed = 0;
                    image_index = 0;
                    
                }
            }
            
            if ph2st = 2
            {
                
                t++;
                switch(t)
                {
                    case -10:    image_index = 1;instance_create_depth(x-64,y,depth-1,obj_boat_boss_desert_proj_ph2_proj3_cr);break;
                    case -5:    image_index = 2;break;
                    case 0:    image_index = 3;break;
                    case 100:    
                        image_index = 4;
                        
                        instance_create_depth(400,y,depth-1,obj_boat_boss_desert_proj_ph2_st3);
                        break;
                    case 150:
                        image_index = 5;
                        break;
                    case 160:
                        image_index = 0;
                        break;
                    case 175:
                        ph2st = 3;
                        t = -50;
                        sprite_index = spr_boat_boss_desert_idle;
                        image_speed = 1;
                        break;                        
                }
            }
            
            if (ph2st = 3) { // переход вниз
                y+=1;
                if y>=216
                {
                    y = 216;
                    ph2st = 4;
                    sprite_index = spr_boat_boss_desert_attack3;
                    image_speed = 0;
                    image_index = 0;
                }
            }
            
            if (ph2st = 4) { // вытсрел
                t++;
                switch(t)
                {
                    case -10:    image_index = 1;instance_create_depth(x-64,y,depth-1,obj_boat_boss_desert_proj_ph2_proj3_cr);break;
                    case -5:    image_index = 2;break;
                    case 0:    image_index = 3;break;
                    
                    case 100:    
                        image_index = 4;
                        fnc_snd_play_onetime(snd_enemy_desert_boat_charge);
                        instance_create_depth(400,y,depth-1,obj_boat_boss_desert_proj_ph2_st3);
                        break;
                    case 150:
                        image_index = 5;
                        break;
                    case 160:
                        image_index = 0;
                        break;
                    case 175:
                        ph2st = 0
                        state = 1;
                        t = 0;
                        next_state = 2;
                        vspd = choose(-1,1);
                        break;
                }
            }
            
            
            #endregion
            break;
    }
}    
    
#region Попадание

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
    var d = instance_create_depth(x,y,depth,obj_boat_boss_desert_phase2death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
}

#endregion       