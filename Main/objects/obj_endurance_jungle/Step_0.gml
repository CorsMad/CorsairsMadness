/// @description Insert description here
// You can write your code in this editor

/* STATES /////////////

1 - начало

1.1 - // Горизонтальные птицы, летящие в игрока по количеству
1.2 - // Горизонтальные стреляющие и 2 ежа
1.3 - // Вертикальные стреляющие. Волновые, ящерица, еж 2
1.4 - // Волновые птицы, 2 растения, 2 ежа, 1 ящерица
1.5 - // получение сундука
1.51 - // Разбивка сундук
1.6 - // разрушение блоков под землей

2.1 - Босс 1 - 2 и 3 фазы
2.2 - получение сундука

3.1 - Босс 2 - 2 и 3 фазы
3.2 - получение монеты

*/

#region 1 ФАЗА

if state = 1
{   
    t++;
    if t = 100
    {
        state = 1.1;
        t = 0;
    }
}

if state = 1.1 // Горизонтальные птицы, летящие в игрока по количеству
{
    t++; 
    switch(t)
    {
        case 30: 
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 60:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 90:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 120:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 150:
            fnc_endurance_j_spwn_bird_hor_far();
            break;
        case 180:
            fnc_endurance_j_spwn_bird_hor_far();
            break;
        case 400:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 420:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 440:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 460:
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 480:
            fnc_endurance_j_spwn_bird_hor_close();
            fnc_endurance_j_spwn_bird_hor_far();
            break;
        case 500:
            fnc_endurance_j_spwn_bird_hor_far();
            fnc_endurance_j_spwn_bird_hor_close();
            break;
        case 900:   
            state = 1.2;
            t = 0;
            break;
    }   
}

if state = 1.2 // Горизонтальные стреляющие и 2 ежа
{
    if t < 50 t++;
    switch(t)
    {
        case 1: 
            instance_create_depth(64,144,0,obj_bird_limiter);
            instance_create_depth(416,144,0,obj_bird_limiter);
            break;
        case 10:
            var b_l = instance_create_depth(96,128,0,obj_big_spawner_j1_r17);
            b_l.x_cr = 0;
            b_l.y_cr = 0;
            b_l.obj_cr = obj_bird_horizontal_shooting;

            var b_r = instance_create_depth(384,128,0,obj_big_spawner_j1_r17);
            b_r.x_cr = 0;
            b_r.y_cr = 0;
            b_r.obj_cr = obj_bird_horizontal_shooting;
            
            
            if obj_Player.x <= 288 && obj_Player.x >= 192
            {
                var h_l = instance_create_depth(64,240,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 0;
                h_l.obj_cr = obj_spikehedge;
                var h_r = instance_create_depth(416,240,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 0;
                h_r.obj_cr = obj_spikehedge;
            }
            
            if obj_Player.x < 192
            {
                var h_l = instance_create_depth(304,240,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 0;
                h_l.obj_cr = obj_spikehedge;
                var h_r = instance_create_depth(416,240,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 0;
                h_r.obj_cr = obj_spikehedge;
            }   
            if obj_Player.x > 288
            {
                var h_l = instance_create_depth(64,240,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 0;
                h_l.obj_cr = obj_spikehedge;
                var h_r = instance_create_depth(176,240,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 0;
                h_r.obj_cr = obj_spikehedge;
            }  
        break;
    }
    if t >= 50 && !instance_exists(obj_spikehedge) && !instance_exists(obj_bird_horizontal_shooting)
    {
        t = 0;
        instance_destroy(obj_bird_limiter);
        state = 1.3;
    }
}

if state = 1.3 // Вертикальные стреляющие. Волновые, ящерица, еж 2
{
    if t < 410 t++;
    switch(t)
    {
        case 50: 
            instance_create_depth(64,64,0,obj_bird_limiter);
            instance_create_depth(416,64,0,obj_bird_limiter);
            instance_create_depth(64,224,0,obj_bird_limiter);
            instance_create_depth(416,224,0,obj_bird_limiter);
            break;
        case 70:    
            var h_r = instance_create_depth(64,80,0,obj_big_spawner_j1_r17)   ;
            h_r.x_cr = 0;
            h_r.y_cr = 0;
            h_r.obj_cr = obj_bird_verical_shooting;
            
            var h_r = instance_create_depth(416,176,0,obj_big_spawner_j1_r17)   ;
            h_r.x_cr = 0;
            h_r.y_cr = 0;
            h_r.obj_cr = obj_bird_verical_shooting;
            break;
            
        case 100: 
            if  obj_Player.x < room_width/2 
            {
                var liz1 = instance_create_depth(432,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_lizardball;
            } else
            {
                var liz1 = instance_create_depth(48,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_lizardball;   
            }
            
            break;
        case 260: 
            fnc_endurance_j_spwn_bird_wave_far();
            break;

        case 380: 
            fnc_endurance_j_spwn_bird_wave_far();
            break;       
    }
    
    if t > 400 && !instance_exists(obj_bird_horizontal_waving_l)
    && !instance_exists(obj_bird_horizontal_waving_r)
    && !instance_exists(obj_bird_verical_shooting)
    && !instance_exists(obj_lizardball)
    {
        instance_destroy(obj_bird_limiter);
        state = 1.4;
        t = 0;
    }
}

if state = 1.4 // Волновые птицы, 2 растения, 2 ежа, 1 ящерица
{
    if t < 700 t++;
    switch(t)
    {
        case 100:
            if obj_Player.x <= 288 && obj_Player.x >= 192
            {
                var h_l = instance_create_depth(64,224,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 16;
                h_l.obj_cr = obj_plant_player;
                
                var h_r = instance_create_depth(416,224,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 16;
                h_r.obj_cr = obj_plant_player;
            }           
            if obj_Player.x < 192
            {
                var h_l = instance_create_depth(304,224,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 16;
                h_l.obj_cr = obj_plant_player;
                var h_r = instance_create_depth(416,224,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 16;
                h_r.obj_cr = obj_plant_player;
            }   
            if obj_Player.x > 288
            {
                var h_l = instance_create_depth(64,224,0,obj_big_spawner_j1_r17)   ;
                h_l.x_cr = 0;
                h_l.y_cr = 16;
                h_l.obj_cr = obj_plant_player;
                
                var h_r = instance_create_depth(176,224,0,obj_big_spawner_j1_r17)   ;
                h_r.x_cr = 0;
                h_r.y_cr = 16;
                h_r.obj_cr = obj_plant_player;
                
            }    
            break;
        case 200:
            fnc_endurance_j_spwn_bird_wave_far();
            break;
        case 450:
            fnc_endurance_j_spwn_bird_wave_far();
            if  obj_Player.x < room_width/2 
            {
                var liz1 = instance_create_depth(368,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_lizardball;
            } else
            {
                var liz1 = instance_create_depth(112,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_lizardball;   
            }
            break;
        case 600:
            if  obj_Player.x < room_width/2 
            {
                var liz1 = instance_create_depth(432,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_spikehedge;
            } else
            {
                var liz1 = instance_create_depth(48,240,0,obj_big_spawner_j1_r17);
                liz1.x_cr = 0;
                liz1.y_cr = 0;
                liz1.obj_cr = obj_spikehedge;   
            }
            break;            
    }   
    if t > 660 && !instance_exists(obj_lizardball)
    && !instance_exists(obj_spikehedge)
    && !instance_exists(obj_plant_player)
    && !instance_exists(obj_bird_horizontal_waving_l)
    && !instance_exists(obj_bird_horizontal_waving_r)
    {
        state = 1.5;
        t = 0;
    }
}

if state = 1.5 // получение сундука
{
    if t < 22 t++;
    if t = 20 instance_create_depth(48,240,1,obj_chest_je_1);
}

if state = 1.51 // Разбивка сундук
{
    t++;
    if t = 100
    {
        t = 0;
        state = 1.6;
    }
}

if state = 1.6
{
    t++;
    if t = 1
    {
        obj_block_end_jngl.state = 1;
    }
}

if state = 1.7 // Ожидание перед боссом 1
{
    t++;
    if t = 100 
    {
        obj_ow_platform_3_end.isOn = 1;
        state = 2.1
        t = 0;
        instance_destroy(obj_gui_controller);
        instance_create_depth(0,0,-1,obj_gui_controller_boss_j_endurance);
        
    }
}

#endregion

#region 2 ФАЗА

if state = 2.1
{
    if t < 3 t++;
    if t = 1
    {
        instance_destroy(obj_gui_controller)
        instance_create_depth(0,0,0,obj_gui_controller_boss_j_endurance);
        instance_create_depth(0,0,0,obj_boss1e_controller);
    }
}

if state = 2.2
{
    if t < 22 t++;
    if t = 20 instance_create_depth(416,240,1,obj_chest_je_2);
}

if state = 2.3 // Ожидание перед 2 боссом
{
    t++
    
    if t = 100
    {
        state = 3.1;
        t = 0;
    }
}
#endregion

#region 3 ФАЗА

if state = 3.1
{
    if t < 3 t++;
    if t = 1
    {
        instance_create_depth(0,0,0,obj_boss2je_controller);
    }
}

if state = 3.2
{
    t++;
    if t = 20
    {
        if global.secrets_j2_endurance = 0
        {
            instance_create_depth(240,240,0,obj_chest_je_3_s);   
        } else instance_create_depth(240,240,0,obj_chest_je_3);  
        instance_destroy();
    }
    
}
#endregion