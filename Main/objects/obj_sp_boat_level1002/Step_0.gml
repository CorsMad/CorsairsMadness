/// @description Insert description here
// You can write your code in this editor

#region Счетчик

#region #1 Скелеты по прямой 5 - 6 штук
if state = 1
{   
    if t < 800
    {
        t++;   
    }
    
    if t = 800 && !instance_exists(obj_skeleton_surf_2hp)
    {
        state = 2;
        t = 0;
    }
    
    switch(t)
    {
        case 60 :   instance_create_depth(512,208,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(592,240,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(656,144,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(720,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(832,240,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(912,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(1040,208,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1200,144,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1344,176,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1392,160,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1456,144,depth,obj_skeleton_surf_2hp);
                    break;  

    }
    
}

#endregion

#region 2 Скелеты закругляющиеся (Быстрая стрельба)
if state = 2
{
    if t < 500
    {
        t++;
    }
    
    fnc_boat_barrel(500,obj_boat_power_fastpistol,obj_powerup_barrel_fastpistol,3);
    
    switch(t)
    {
        case 60 :   instance_create_depth(576,256,depth,obj_skeleton_surf_wave_1hp);break;
        case 80 :   instance_create_depth(592,208,depth,obj_skeleton_surf_wave_1hp);break;
        case 100 :  instance_create_depth(640,272,depth,obj_skeleton_surf_wave_2hp);break;           
        case 120 :  instance_create_depth(656,224,depth,obj_skeleton_surf_wave_2hp);break;               
        case 140 :  instance_create_depth(720,240,depth,obj_skeleton_surf_wave_3hp);break;  
        case 400 :  instance_create_depth(544,192,depth,obj_powerup_barrel_fastpistol);break;
    }
}
#endregion

#region 3 Мины + много скелетов в игрока
if state = 3
{
    if t < 650
    {
        t++;
    }
    if t = 650 && !instance_exists(obj_skeleton_surf_pointing_2hp)
    {
        state = 4;
        t = 0;
        global.money_saved = global.gold;
        global.boatCheckpoint = 1;
        instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
                    
    }
    
    switch(t)
    {
        case 60:    instance_create_depth(528,208,depth,obj_boat_mine);
                    instance_create_depth(656,160,depth,obj_boat_mine);
                    instance_create_depth(784,224,depth,obj_boat_mine);
                    break;
        case 500:   instance_create_depth(528,176,depth,obj_skeleton_surf_pointing_1hp);break;
        case 520:   instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_1hp);break;
        case 540:   instance_create_depth(528,144,depth,obj_skeleton_surf_pointing_1hp);break;
        case 560:   instance_create_depth(528,208,depth,obj_skeleton_surf_pointing_2hp);break;
        case 580:   instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_2hp);break;
        case 600:   instance_create_depth(576,160,depth,obj_skeleton_surf_pointing_2hp);break; 
    }
}
#endregion

#region 4 Скелет по прямой + Скелет стреляющий издалека 
if state = 4
{
    if t < 1100
    {
        t++;   
    }
    if t = 1100 && !instance_exists(obj_skeleton_surf_archer_pointing) && !instance_exists(obj_skeleton_surf_3hp) && !instance_exists(obj_skeleton_surf_2hp)
    {
        t = 0;
        state = 5;
    }
    
    switch(t)
    {
        case 60:    instance_create_depth(528,144,depth,obj_skeleton_surf_archer_pointing); 
                    instance_create_depth(656,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(736,240,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(816,192,depth,obj_skeleton_surf_1hp);
                    break; 
        case 400:   instance_create_depth(512,224,depth,obj_skeleton_surf_archer_pointing); 
                    instance_create_depth(624,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(672,240,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(720,160,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(768,224,depth,obj_skeleton_surf_2hp);
                    break;
        case 1000:  instance_create_depth(496,144,depth,obj_skeleton_surf_archer_pointing); 
                    instance_create_depth(624,160,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(736,192,depth,obj_skeleton_surf_3hp);
                    break;
        case 1050:  instance_create_depth(512,224,depth,obj_skeleton_surf_archer_pointing);break;       
    }

}
#endregion

#region 5 Камни 
if state = 5
{
   t++;
   switch(t)
   {
        case 60:    
                    instance_create_depth(512,192,depth,obj_boat_stone15);
                    instance_create_depth(512,256,depth,obj_boat_stone15);
                    instance_create_depth(576,224,depth,obj_boat_stone15);
                    instance_create_depth(624,272,depth,obj_boat_stone15);
                    instance_create_depth(688,128,depth,obj_boat_stone15);
                    instance_create_depth(752,176,depth,obj_boat_stone15);
                    instance_create_depth(800,208,depth,obj_boat_stone15);
                    instance_create_depth(816,160,depth,obj_boat_stone15);
                    instance_create_depth(976,256,depth,obj_boat_stone15);
                    instance_create_depth(992,192,depth,obj_boat_stone15);
                    instance_create_depth(1040,224,depth,obj_boat_stone15);
                    /*
                    instance_create_depth(512,192,depth,obj_boat_stone);
                    instance_create_depth(672,256,depth,obj_boat_stone);
                    instance_create_depth(848,128,depth,obj_boat_stone);
                    instance_create_depth(960,192,depth,obj_boat_stone);
                    instance_create_depth(1264,256,depth,obj_boat_stone);
                    instance_create_depth(1408,192,depth,obj_boat_stone);
                    */
                    break;
        case 500:   t = 0;
                    state = 6;
                    global.money_saved = global.gold;
                    global.boatCheckpoint = 2;
                    instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
                    break;        
   }
}
#endregion

#region 6 Скелет стреляющий издалека вверхвниз 
if state = 6
{
    if t <900 
    {
        t++;
    }
    if t > 800 &&   !instance_exists(obj_skeleton_surf_archer) 
    {
        t =0 ;
        state = 7;
    }
    switch(t)
    {
        case 60:    instance_create_depth(512,208,depth,obj_skeleton_surf_archer);break;
        case 200:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);
                    instance_create_depth(512,256,depth,obj_skeleton_surf_archer);
                    break;
        case 500:   instance_create_depth(592,208,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(784,240,depth,obj_skeleton_surf_2hp);
                    break;
        case 550:   instance_create_depth(496,272,depth,obj_skeleton_surf_archer);
                    instance_create_depth(512,192,depth,obj_skeleton_surf_archer);
                    break;
                    /*
        case 900:   t = 0;
                    state = 7;
                    break;
                    */      
    }
    
}
#endregion

#region 7 Камни + Скелеты закругляющиеся 
if state = 7
{
    t++;
    switch(t)
    {
        case 60:    
                    
                    instance_create_depth(512,192,depth,obj_boat_stone);
                    instance_create_depth(560,128,depth,obj_boat_stone);
                    instance_create_depth(576,160,depth,obj_boat_stone);
                    instance_create_depth(672,272,depth,obj_boat_stone);
                    instance_create_depth(720,240,depth,obj_boat_stone);
                    instance_create_depth(800,128,depth,obj_boat_stone);
                    instance_create_depth(800,256,depth,obj_boat_stone);
                    instance_create_depth(880,144,depth,obj_boat_stone);
                    instance_create_depth(928,160,depth,obj_boat_stone);
                    instance_create_depth(928,272,depth,obj_boat_stone);
                    break;
                    
        case 140:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_2hp);break;
        case 220:   instance_create_depth(512,208,depth,obj_skeleton_surf_wave_3hp);break;
        case 340:   instance_create_depth(512,224,depth,obj_skeleton_surf_wave_2hp);break;
        case 420:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_3hp);break;
        case 560:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_3hp);break;
       
                    
                    
        case 561:  t = 0;
                    state = 8;
                    break;
        
    }
}
#endregion

#region 8 Водоросль (Быстрая стрельба)
if state = 8
{
    if t < 201
    {
        t++;
    }
    
    fnc_boat_barrel(201,obj_boat_power_fastpistol,obj_powerup_barrel_fastpistol,9);
    
    switch(t)
    {
        case 1:    instance_create_depth(480,160,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(528,128,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(560,176,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(560,208,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(560,240,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(576,224,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(592,128,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(592,160,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(592,256,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(608,144,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(608,192,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(608,224,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(608,240,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(624,160,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(624,176,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(624,208,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(640,112,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(640,256,depth,obj_boat_algae_fast)     ;
                    instance_create_depth(656,208,depth,obj_boat_algae_fast)     ;
                    break;
        case 200:  instance_create_depth(512,208,depth,obj_powerup_barrel_fastpistol);break;
    }
}
#endregion

#region 9 Скелеты направляющиеся в игрока
if state = 9
{
    if t < 400
    {
        t++;
    }
    
    if t  = 400 && !instance_exists(obj_boat_mine) && !instance_exists(obj_skeleton_surf_pointing_1hp) && !instance_exists(obj_skeleton_surf_1hp)  
    {
            t = 0;
            state = 10;   
    }
    
    
    switch(t)
    {   case 1:     instance_create_depth(528,144,depth,obj_boat_mine);
                    instance_create_depth(624,272,depth,obj_boat_mine);
                    instance_create_depth(720,192,depth,obj_boat_mine);
                    break;
        case 10:    instance_create_depth(496,144,depth,obj_skeleton_surf_pointing_1hp);
                    instance_create_depth(544,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(624,240,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(736,208,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(832,160,depth,obj_skeleton_surf_2hp);
                    break;   
        case 40:    instance_create_depth(512,256,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 70:    instance_create_depth(496,192,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 100:    instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 130:    instance_create_depth(496,160,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 160:    instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 190:    instance_create_depth(496,144,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 220:    instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 250:    instance_create_depth(496,256,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 280:    instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 310:    instance_create_depth(496,192,depth,obj_skeleton_surf_pointing_1hp);break;   
        case 340:    instance_create_depth(512,160,depth,obj_skeleton_surf_pointing_1hp);break;   
    }
    
}
#endregion

#region 10 Камни + водоросли
if state = 10
{
    t++;
    switch(t)
    {
        
        case 1: instance_create_depth(512,272,depth,obj_boat_stone15);
                instance_create_depth(560,128,depth,obj_boat_stone15);
                instance_create_depth(576,256,depth,obj_boat_stone15);
                instance_create_depth(624,144,depth,obj_boat_stone15);
                instance_create_depth(688,160,depth,obj_boat_stone15);
                instance_create_depth(736,208,depth,obj_boat_stone15);
                instance_create_depth(752,144,depth,obj_boat_stone15);
                instance_create_depth(768,176,depth,obj_boat_stone15);
                instance_create_depth(848,272,depth,obj_boat_stone15);
                instance_create_depth(912,256,depth,obj_boat_stone15);
                instance_create_depth(928,128,depth,obj_boat_stone15);
                instance_create_depth(960,208,depth,obj_boat_stone15);
                instance_create_depth(992,240,depth,obj_boat_stone15);
                instance_create_depth(1024,128,depth,obj_boat_stone15);
                instance_create_depth(1104,128,depth,obj_boat_stone15);
                instance_create_depth(1184,160,depth,obj_boat_stone15);
                instance_create_depth(1200,224,depth,obj_boat_stone15);
                instance_create_depth(1216,192,depth,obj_boat_stone15);
                instance_create_depth(1280,208,depth,obj_boat_stone15);
                
                instance_create_depth(528,160,depth,obj_boat_algae15);
                instance_create_depth(544,192,depth,obj_boat_algae15);
                instance_create_depth(560,208,depth,obj_boat_algae15);
                instance_create_depth(576,176,depth,obj_boat_algae15);
                instance_create_depth(592,192,depth,obj_boat_algae15);
                instance_create_depth(640,176,depth,obj_boat_algae15);
                instance_create_depth(640,240,depth,obj_boat_algae15);
                instance_create_depth(656,224,depth,obj_boat_algae15);
                instance_create_depth(672,208,depth,obj_boat_algae15);
                instance_create_depth(672,240,depth,obj_boat_algae15);
                instance_create_depth(688,224,depth,obj_boat_algae15);
                instance_create_depth(688,256,depth,obj_boat_algae15);
                instance_create_depth(704,240,depth,obj_boat_algae15);
                instance_create_depth(720,224,depth,obj_boat_algae15);
                instance_create_depth(752,240,depth,obj_boat_algae15);
                instance_create_depth(784,208,depth,obj_boat_algae15);
                instance_create_depth(832,208,depth,obj_boat_algae15);
                instance_create_depth(848,192,depth,obj_boat_algae15);
                instance_create_depth(864,176,depth,obj_boat_algae15);
                instance_create_depth(880,192,depth,obj_boat_algae15);
                instance_create_depth(912,160,depth,obj_boat_algae15);
                instance_create_depth(960,144,depth,obj_boat_algae15);
                instance_create_depth(976,160,depth,obj_boat_algae15);
                instance_create_depth(992,144,depth,obj_boat_algae15);
                instance_create_depth(1008,160,depth,obj_boat_algae15);
                instance_create_depth(1024,144,depth,obj_boat_algae15);
                instance_create_depth(1024,192,depth,obj_boat_algae15);
                instance_create_depth(1056,176,depth,obj_boat_algae15);
                instance_create_depth(1056,256,depth,obj_boat_algae15);
                instance_create_depth(1072,224,depth,obj_boat_algae15);
                instance_create_depth(1104,192,depth,obj_boat_algae15);
                instance_create_depth(1104,224,depth,obj_boat_algae15);
                instance_create_depth(1120,240,depth,obj_boat_algae15);
                instance_create_depth(1168,256,depth,obj_boat_algae15);
                break;
                
        case 700:  t = 0;
                    state = 11;
                    global.money_saved = global.gold;
                    global.boatCheckpoint = 3;
                    instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
                    break;
    }
}
#endregion

#region 11 Скелеты волной + скелеты по прямой 
if state = 11
{
    if t < 200
    {
        t++;   
    }
    
    if t = 200 && !instance_exists(obj_skeleton_surf_1hp) && !instance_exists(obj_skeleton_surf_2hp) && !instance_exists(obj_skeleton_surf_wave_1hp) && !instance_exists(obj_skeleton_surf_wave_2hp) && !instance_exists(obj_skeleton_surf_wave_3hp)
    {
        t = 0;
        state = 12;   
    }
    
    switch(t)
    {
        case 60:    instance_create_depth(512,208,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(592,144,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(672,224,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(784,240,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(848,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(944,144,depth,obj_skeleton_surf_1hp);
                    break;
                    
        case 70:    instance_create_depth(512,256,depth,obj_skeleton_surf_wave_1hp);break;
        case 90:    instance_create_depth(576,192,depth,obj_skeleton_surf_wave_2hp);break;
        case 110:   instance_create_depth(624,224,depth,obj_skeleton_surf_wave_1hp);break;
        case 130:   instance_create_depth(672,208,depth,obj_skeleton_surf_wave_3hp);break;        
    }
}
#endregion

#region 12 Скелеты стреляющие издалека вверхвниз + скелеты в игрока (Пушка-пулемет)

if state = 12
{
    if t < 850
    {
        t++;
    }
    
    if t = 850 && !instance_exists(obj_skeleton_surf_archer)
    {
        t = 900
        instance_create_depth(512,208,depth,obj_powerup_barrel_cannon);
    }
    
    if t = 900 
    {
        fnc_boat_barrel(900,obj_boat_power_cannon,obj_powerup_barrel_cannon,13);
    }
    
    switch(t)
    {
        case 60:    instance_create_depth(496,256,depth,obj_skeleton_surf_archer);break;
        case 100:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);break;
        case 200:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);break;
        case 250:   instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_1hp);break;
        case 350:   instance_create_depth(496,224,depth,obj_skeleton_surf_archer);break;
        case 400:   instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);break;
        case 500:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer);break;
        case 550:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_3hp);break;
    }
}


#endregion

#region 13 Скелет по прямой + Скелет в игрока + Скелет издалека + мина
if state = 13
{
    if t < 600
    {
        t++;
    }
    
    if t = 600 && !instance_exists(obj_boat_mine) && !instance_exists(obj_skeleton_surf_archer) 
    {
        state = 14;
        t = 0;
        global.money_saved = global.gold;
        global.boatCheckpoint = 4;
        instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
    }
    
    switch(t)
    {
        case 1:     instance_create_depth(704,272,depth,obj_boat_mine);
                    instance_create_depth(896,160,depth,obj_boat_mine);
                    instance_create_depth(944,224,depth,obj_boat_mine);
                    instance_create_depth(1152,256,depth,obj_boat_mine);
                    instance_create_depth(1328,192,depth,obj_boat_mine);
                    break;
                    
        case 60:    instance_create_depth(496,256,depth,obj_skeleton_surf_archer);
                    instance_create_depth(544,272,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(640,208,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(736,144,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(800,176,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(864,256,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(992,176,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(1008,256,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(1088,224,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(1168,160,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1264,256,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(1392,272,depth,obj_skeleton_surf_3hp);
                    instance_create_depth(1408,208,depth,obj_skeleton_surf_1hp);
                    break;
        case 100:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);break;
        case 200:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);break;
        case 250:   instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_2hp);break;
        case 350:   instance_create_depth(496,224,depth,obj_skeleton_surf_archer);break;
        case 400:   instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_3hp);break;
        case 500:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer);break;
        case 550:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_3hp);break;

    }
}
#endregion

#region 14 Препятствие полное
if state = 14
{
    t++;
    
    switch(t)
    {
        
        case 60:    instance_create_depth(496,112,depth,obj_boat_obstacle_big);
                    instance_create_depth(736,192,depth,obj_boat_obstacle_small);
                    instance_create_depth(912,128,depth,obj_boat_obstacle_small);
                    instance_create_depth(1136,192,depth,obj_boat_obstacle_small);
                    instance_create_depth(1248,112,depth,obj_boat_obstacle_small);
                    
                    instance_create_depth(576,128,depth,obj_boat_stone);
                    instance_create_depth(608,176,depth,obj_boat_stone);
                    instance_create_depth(640,144,depth,obj_boat_stone);
                    instance_create_depth(656,208,depth,obj_boat_stone);
                    instance_create_depth(688,176,depth,obj_boat_stone);
                    instance_create_depth(752,160,depth,obj_boat_stone);
                    instance_create_depth(800,128,depth,obj_boat_stone);
                    instance_create_depth(816,272,depth,obj_boat_stone);
                    instance_create_depth(880,240,depth,obj_boat_stone);
                    instance_create_depth(960,256,depth,obj_boat_stone);
                    instance_create_depth(992,128,depth,obj_boat_stone);
                    instance_create_depth(1040,160,depth,obj_boat_stone);
                    instance_create_depth(1104,176,depth,obj_boat_stone);
                    instance_create_depth(1152,144,depth,obj_boat_stone);
                    instance_create_depth(1200,272,depth,obj_boat_stone);
                    instance_create_depth(1248,240,depth,obj_boat_stone);
                    

                    instance_create_depth(576,224,depth,obj_boat_algae_fast);
                    instance_create_depth(576,256,depth,obj_boat_algae_fast);
                    instance_create_depth(592,240,depth,obj_boat_algae_fast);
                    instance_create_depth(624,240,depth,obj_boat_algae_fast);
                    instance_create_depth(656,256,depth,obj_boat_algae_fast);
                    instance_create_depth(672,240,depth,obj_boat_algae_fast);
                    instance_create_depth(688,256,depth,obj_boat_algae_fast);
                    instance_create_depth(704,224,depth,obj_boat_algae_fast);
                    instance_create_depth(784,224,depth,obj_boat_algae_fast);
                    instance_create_depth(800,176,depth,obj_boat_algae_fast);
                    instance_create_depth(800,208,depth,obj_boat_algae_fast);
                    instance_create_depth(816,160,depth,obj_boat_algae_fast);
                    instance_create_depth(816,192,depth,obj_boat_algae_fast);
                    instance_create_depth(832,176,depth,obj_boat_algae_fast);
                    instance_create_depth(848,160,depth,obj_boat_algae_fast);
                    instance_create_depth(864,176,depth,obj_boat_algae_fast);
                    instance_create_depth(960,176,depth,obj_boat_algae_fast);
                    instance_create_depth(976,192,depth,obj_boat_algae_fast);
                    instance_create_depth(992,256,depth,obj_boat_algae_fast);
                    instance_create_depth(1056,192,depth,obj_boat_algae_fast);
                    instance_create_depth(1072,224,depth,obj_boat_algae_fast);
                    instance_create_depth(1072,240,depth,obj_boat_algae_fast);
                    instance_create_depth(1088,208,depth,obj_boat_algae_fast);
                    instance_create_depth(1088,256,depth,obj_boat_algae_fast);
                    instance_create_depth(1168,176,depth,obj_boat_algae_fast);
                    instance_create_depth(1184,192,depth,obj_boat_algae_fast);
                    instance_create_depth(1200,176,depth,obj_boat_algae_fast);
                    break;
                    
        case 900:   t = 0;
                    state = 15;
                    break;
    }
}
#endregion

#region 15 Водоросль + мина + Скелет в игрока + Скелет Стреляющий вверх вниз ( Пушка-пулемет)
if state = 15
{
    if t < 550
    {
        t++;
    }
    
    if t = 550 && !instance_exists(obj_skeleton_surf_archer_pointing)
    {
        instance_create_depth(512,208,depth,obj_powerup_barrel_cannon);
        t = 600;
    }
    
    if t = 600
    {
        fnc_boat_barrel(600,obj_boat_power_cannon,obj_powerup_barrel_cannon,16);   
    }
    
    
    
    switch(t)
    {
        case 60:    //instance_create_depth(592,144,depth,obj_boat_mine);
                    instance_create_depth(720,208,depth,obj_boat_mine);
                    //instance_create_depth(880,272,depth,obj_boat_mine);
                    instance_create_depth(960,160,depth,obj_boat_mine);
                    
                    instance_create_depth(672,256,depth,obj_boat_stone);
                    instance_create_depth(688,128,depth,obj_boat_stone);
                    instance_create_depth(736,144,depth,obj_boat_stone);
                    instance_create_depth(752,240,depth,obj_boat_stone);
                    instance_create_depth(800,272,depth,obj_boat_stone);
                    
                    instance_create_depth(512,224,depth,obj_boat_algae_fast);
                    instance_create_depth(528,208,depth,obj_boat_algae_fast);
                    instance_create_depth(560,208,depth,obj_boat_algae_fast);
                    instance_create_depth(576,192,depth,obj_boat_algae_fast);
                    instance_create_depth(592,208,depth,obj_boat_algae_fast);
                    instance_create_depth(608,224,depth,obj_boat_algae_fast);
                    instance_create_depth(624,208,depth,obj_boat_algae_fast);
                    instance_create_depth(768,160,depth,obj_boat_algae_fast);
                    instance_create_depth(768,192,depth,obj_boat_algae_fast);
                    instance_create_depth(784,176,depth,obj_boat_algae_fast);
                    instance_create_depth(800,160,depth,obj_boat_algae_fast);
                    instance_create_depth(816,144,depth,obj_boat_algae_fast);
                    instance_create_depth(832,176,depth,obj_boat_algae_fast);
                    break;
        case 200:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer_pointing);break;

        case 500:   instance_create_depth(496,144,depth,obj_skeleton_surf_archer_pointing);break;                    
    }
    
}
#endregion

#region 16 Водоросль + мина + Препятствие половина + Скелет в игрока + Скелет по прямой + Скелет издалека

if state = 16
{
    if t < 2000
    {
        t++;
    }
    
    if t = 2000 && !instance_exists(obj_skeleton_surf_archer_pointing) && !instance_exists(obj_skeleton_surf_pointing_2hp) && !instance_exists(obj_skeleton_surf_archer_pointing)
    {
         state = 16.5;
         t = 0;
    }
    
    switch(t)
    {
        case 50:    instance_create_depth(528,160,depth,obj_boat_mine);
                    instance_create_depth(704,240,depth,obj_boat_mine);
                    instance_create_depth(880,144,depth,obj_boat_mine);
                    break;
        case 75:    instance_create_depth(608,224,depth,obj_skeleton_surf_wave_2hp);break;
        case 100:   instance_create_depth(732,208,depth,obj_skeleton_surf_wave_2hp);break;
        case 125:   instance_create_depth(870,208,depth,obj_skeleton_surf_wave_3hp);break;       
        case 150:   instance_create_depth(1050,208,depth,obj_skeleton_surf_wave_3hp);break;  
        case 175:   instance_create_depth(1160,220,depth,obj_skeleton_surf_wave_3hp);break; 
        case 200:   instance_create_depth(1400,220,depth,obj_skeleton_surf_wave_3hp);break;

         
        case 500:   instance_create_depth(576,208,depth,obj_boat_stone);
                    instance_create_depth(608,176,depth,obj_boat_stone);        
                    instance_create_depth(640,272,depth,obj_boat_stone);
                    instance_create_depth(672,224,depth,obj_boat_stone);
                    instance_create_depth(944,128,depth,obj_boat_stone);
                    instance_create_depth(976,176,depth,obj_boat_stone);
                    instance_create_depth(1040,160,depth,obj_boat_stone);
                    instance_create_depth(1184,256,depth,obj_boat_stone);
                    instance_create_depth(1216,224,depth,obj_boat_stone);
                    
                    instance_create_depth(768,144,depth,obj_boat_mine);
                    instance_create_depth(896,192,depth,obj_boat_mine);
                    
                    instance_create_depth(704,160,depth,obj_boat_algae_fast);
                    instance_create_depth(720,192,depth,obj_boat_algae_fast);
                    instance_create_depth(736,176,depth,obj_boat_algae_fast);
                    instance_create_depth(736,208,depth,obj_boat_algae_fast);
                    instance_create_depth(752,192,depth,obj_boat_algae_fast);
                    instance_create_depth(768,176,depth,obj_boat_algae_fast);
                    instance_create_depth(784,160,depth,obj_boat_algae_fast);
                    instance_create_depth(784,208,depth,obj_boat_algae_fast);
                    instance_create_depth(800,192,depth,obj_boat_algae_fast);
                    instance_create_depth(800,224,depth,obj_boat_algae_fast);
                    instance_create_depth(816,208,depth,obj_boat_algae_fast);
                    instance_create_depth(1072,208,depth,obj_boat_algae_fast);
                    instance_create_depth(1088,176,depth,obj_boat_algae_fast);
                    instance_create_depth(1104,192,depth,obj_boat_algae_fast);
                    instance_create_depth(1120,176,depth,obj_boat_algae_fast);
                    instance_create_depth(1136,160,depth,obj_boat_algae_fast);
                    instance_create_depth(1136,208,depth,obj_boat_algae_fast);
                    instance_create_depth(1152,192,depth,obj_boat_algae_fast);
                    
                    instance_create_depth(975,192,depth,obj_boat_obstacle_small);
                    break;
                    
        case 1400:  instance_create_depth(496,144,depth,obj_boat_algae_fast); //1400
                    instance_create_depth(512,192,depth,obj_boat_algae_fast);
       
                    instance_create_depth(512,256,depth,obj_boat_algae_fast);       
                    instance_create_depth(528,160,depth,obj_boat_algae_fast);        
                    instance_create_depth(544,176,depth,obj_boat_algae_fast);        
                    instance_create_depth(544,208,depth,obj_boat_algae_fast);        
                    instance_create_depth(592,208,depth,obj_boat_algae_fast);        
                    instance_create_depth(608,224,depth,obj_boat_algae_fast);        
                    instance_create_depth(624,192,depth,obj_boat_algae_fast);        
                    instance_create_depth(624,208,depth,obj_boat_algae_fast);        
                    instance_create_depth(656,176,depth,obj_boat_algae_fast);        
                    instance_create_depth(656,240,depth,obj_boat_algae_fast);       
                    instance_create_depth(688,128,depth,obj_boat_algae_fast);       
                    instance_create_depth(688,240,depth,obj_boat_algae_fast);       
                    instance_create_depth(704,256,depth,obj_boat_algae_fast);        
                    instance_create_depth(720,144,depth,obj_boat_algae_fast);       
                    instance_create_depth(736,128,depth,obj_boat_algae_fast);       
                    instance_create_depth(752,144,depth,obj_boat_algae_fast);       
                    instance_create_depth(768,176,depth,obj_boat_algae_fast);       
                    instance_create_depth(800,192,depth,obj_boat_algae_fast);       
                    break;
        case 1600:   
                    instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    instance_create_depth(512,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(576,224,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(640,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(720,256,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(768,144,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(832,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(896,208,depth,obj_skeleton_surf_1hp);

        case 1650:  instance_create_depth(496,160,depth,obj_skeleton_surf_archer_pointing);
                    instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    instance_create_depth(512,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(576,224,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(640,176,depth,obj_skeleton_surf_1hp);
        
        
                    break;
        case 1750:   instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_2hp);break;
        case 1800:   instance_create_depth(496,224,depth,obj_skeleton_surf_archer);break;
        case 1900:   instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_2hp);break;
        case 1950:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer_pointing);break;
        case 2050:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);break;
    }
}

#endregion

#region 16.5 Перед концом

if state = 16.5
{
    t++;
    if t = 150
    {
        t = 0;
        state = 17;
    }
}


#endregion

#endregion

#region 17 - Скорость задников

layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
layer_hspeed(l_Skies,sp_skies);


if state = 17
{
    if t < 300
    {
        t++;
    }
    
    if t > 200
    {
        sp_wat = lerp(sp_wat,-0.5,0.02);
        sp_farwat = lerp(sp_farwat,-0.25,0.02);
        sp_toofarwat = lerp(sp_toofarwat,-0.1,0.02);
        sp_skies = lerp(sp_skies,0,0.02);
    }
    
    
    if t = 299
    {
        obj_Player_boat.state = 10; 
        obj_Player_boat.canControl = 0;
        instance_create_depth(0,0,-1000000,obj_boat_menu);   
    }
    
 
}

#endregion