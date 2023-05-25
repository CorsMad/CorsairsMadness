            
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

if (phase = 0) { // Появление
    x-=2;
    if x<=432
    {
        x = 432;        
        state = 1;
    }
    if (state = 1) { // ожидание + переход
        t++;
        if (t = 50) {
            t = 0;
            phase = 1;
            vspd = choose(-1,1);
        }
    }
}

if (phase = 1) { // Фаза1  
    switch(state)
    {
        case 1:
            #region перемещение туда сюда и периодические выстрелы по прямой            
                x+=hspd;
                y+=vspd;
                t++;
                
                // Смена верт
                if (place_meeting(x,y+vspd,obj_bird_horizontal_limiter)) {
                    vspd = -vspd;
                }                
                
                //таймер выстрелов
                switch(t)
                {
                    case 50:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 100:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 150:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 200:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 250:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 300:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 350:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 400:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st2)
                        break;
                    case 450:
                        vspd = 0;
                        break;
                    case 500:
                        t = 0;
                        state = next_state;
                        break;
                }
            
            #endregion                  
            break;
        case 2:
            #region перемещение к точке где герой и выстрел двумя проджектайлами
                if t < 100 y=lerp(y,obj_Player_boat.y-16,0.05);  
                
                t++;
                switch(t)
                {
                    case 150: 
                        instance_create_depth(x,y-48,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        instance_create_depth(x,y+48,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        // выстрел джвумя проджектайлами
                        break;
                    case 200:
                        t = 0;
                        state = 1;
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
                switch(t)
                {
                    case 150:
                        hspd = -6;
                        break;  
                    case 500:   
                        t = 0;
                        hspd = 0;
                        next_state = 2;
                        state = 1;
                        vspd = choose(-1,1);
                        break;
                }
                if (hspd < 0 && x <= 6) hspd = 6;
                if (hspd > 0 && x >= 432) { hspd = 0; }
                
            #endregion
            break;
    }
}
    
if (phase = 2) { // Фаза2
    switch(state)
    {
        case 1:
            #region Перемещение вверх вниз и перидоические выстрелы в игрока
            x+=hspd;
                y+=vspd;
                t++;
                
                // Смена верт
                if (place_meeting(x,y+vspd,obj_bird_horizontal_limiter)) {
                    vspd = -vspd;
                }
                
                //таймер
                switch(t)
                {
                    case 75:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 150:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 225:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 300:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 375:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 450:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 525:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 600:
                        // выстрел
                        instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph1_st3)
                        break;
                    case 650:
                        vspd = 0;
                        break;
                    case 700:
                        t = 0;
                        ph2st2 = irandom(5);
                        state = next_state;
                        break;
                }
            #endregion
            break;
        case 2:
            #region Фокусирование на середине и серия выстрелов вверх или вниз выстрелами, которые отражаются            
            if point_distance(x, y, 432, 192) > 1
            {
                move_towards_point(432, 192, 1);
            }
            else {
                t++;
                speed = 0;
            }
            
            // выстрелы 
            if t > 10 && t < 100
            {
                if t mod 5 = 0
            {
                switch(ph2st2)
                {
                    case 0:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = -3;                      
                        break;
                    case 1:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = -4;
                        break;
                    case 2:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = -3;
                        break;
                    case 3:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = 3;                      
                        break;
                    case 4:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = 4;
                        break;
                    case 5:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = 3;
                        break;
                }              
            }
                if t = 99 {
                    ph2st2 = irandom(5);   
                }
            }
            if t > 200 && t < 290
            {
                if t mod 5 = 0
            {
                switch(ph2st2)
                {
                    case 0:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = -3;                      
                        break;
                    case 1:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = -4;
                        break;
                    case 2:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = -3;
                        break;
                    case 3:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = 3;                      
                        break;
                    case 4:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = 4;
                        break;
                    case 5:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = 3;
                        break;
                }              
            }
                if t = 289 {
                    ph2st2 = irandom(5);   
                }
            }
            if t > 400 && t < 490
            {
                if t mod 5 = 0
            {
                switch(ph2st2)
                {
                    case 0:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = -3;                      
                        break;
                    case 1:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = -4;
                        break;
                    case 2:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = -3;
                        break;
                    case 3:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -2;                      
                        v.vspd = 3;                      
                        break;
                    case 4:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -3;
                        v.vspd = 4;
                        break;
                    case 5:
                        var v = instance_create_depth(x,y,depth-1,obj_boat_boss_desert_proj_ph2_st2); 
                        v.hspd = -4;
                        v.vspd = 3;
                        break;
                }              
            }
                if t = 489 {
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
                    t = 0;
                }
            }
            
            if ph2st = 2
            {
                t++;
                switch(t)
                {
                    case 50:
                        instance_create_depth(400,y,depth-1,obj_boat_boss_desert_proj_ph2_st3);
                        break;
                    case 125:
                        ph2st = 3;
                        t = 0;
                        break;
                }
            }
            
            if (ph2st = 3) { // переход вниз
                y+=1;
                if y>=224
                {
                    y = 224;
                    ph2st = 4;
                }
            }
            
            if (ph2st = 4) { // вытсрел
                t++;
                switch(t)
                {
                    case 50:
                        instance_create_depth(400,y,depth-1,obj_boat_boss_desert_proj_ph2_st3);
                        break;
                    case 125:
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