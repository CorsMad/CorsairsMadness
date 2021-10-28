/// @description Insert description here
// You can write your code in this editor

#region #1 Скелеты по прямой 5 - 6 штук
if state = 1
{   
    t++;   
    
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
        case 800 :  state = 2;
                    t = 0;
                    break;
    }
}

#endregion

#region 2 Скелеты закругляющиеся (Быстрая стрельба)
if state = 2
{
    t++;
    switch(t)
    {
        case 60 :   instance_create_depth(576,256,depth,obj_skeleton_surf_wave_1hp);break;
        case 80 :   instance_create_depth(592,208,depth,obj_skeleton_surf_wave_1hp);break;
        case 100 :  instance_create_depth(640,272,depth,obj_skeleton_surf_wave_2hp);break;           
        case 120 :  instance_create_depth(656,224,depth,obj_skeleton_surf_wave_2hp);break;               
        case 140 :  instance_create_depth(720,240,depth,obj_skeleton_surf_wave_3hp);break;  
        case 500 :  instance_create_depth(544,192,depth,obj_powerup_barrel_fastpistol);break;  
        
        case 900 :  state = 3;
                    t = 0;
                    break;      
    }
}
#endregion

#region 3 Мины + много скелетов в игрока
if state = 3
{
    t++;
    switch(t)
    {
        case 60:    instance_create_depth(528,208,depth,obj_boat_mine);
                    instance_create_depth(656,160,depth,obj_boat_mine);
                    instance_create_depth(784,224,depth,obj_boat_mine);
                    break;
        case 700:   instance_create_depth(528,176,depth,obj_skeleton_surf_pointing_1hp);break;
        case 720:   instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_1hp);break;
        case 740:   instance_create_depth(528,144,depth,obj_skeleton_surf_pointing_1hp);break;
        case 760:   instance_create_depth(528,208,depth,obj_skeleton_surf_pointing_2hp);break;
        case 780:   instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_2hp);break;
        case 800:   instance_create_depth(576,160,depth,obj_skeleton_surf_pointing_2hp);break;
        case 1000:  state = 4;
                    t = 0;
                    break;  
    }
}
#endregion

#region 4 Скелет по прямой + Скелет стреляющий издалека 
if state = 4
{
    t++;
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
        case 1450:  t = 0;
                    state = 5;
                    break;
                    
                    
    }

}
#endregion

#region 5 Камни 
if state = 5
{
   t++;
   switch(t)
   {
        case 60:    instance_create_depth(512,192,depth,obj_boat_stone);
                    instance_create_depth(672,256,depth,obj_boat_stone);
                    instance_create_depth(848,128,depth,obj_boat_stone);
                    instance_create_depth(960,192,depth,obj_boat_stone);
                    instance_create_depth(1264,256,depth,obj_boat_stone);
                    instance_create_depth(1408,192,depth,obj_boat_stone);
                    break;
        case 1400:  t = 0;
                    state = 6;
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
        case 60:    instance_create_depth(528,128,depth,obj_boat_stone);
                    instance_create_depth(720,160,depth,obj_boat_stone);
                    instance_create_depth(736,224,depth,obj_boat_stone);
                    instance_create_depth(800,192,depth,obj_boat_stone);
                    instance_create_depth(1088,256,depth,obj_boat_stone);
                    instance_create_depth(1152,240,depth,obj_boat_stone);
                    instance_create_depth(1424,128,depth,obj_boat_stone);
                    instance_create_depth(1456,192,depth,obj_boat_stone);
                    instance_create_depth(1488,160,depth,obj_boat_stone);
                    instance_create_depth(608,256,depth,obj_skeleton_surf_wave_1hp);
                    instance_create_depth(1088,208,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(1360,272,depth,obj_skeleton_surf_wave_2hp);
                    break;
        case 100:   instance_create_depth(860,260,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(1900,256,depth,obj_skeleton_surf_wave_2hp);
                    break;
        case 1500:  t = 0;
                    state = 8;
                    break;
        
    }
}
#endregion

#region 8 Водоросль (Быстрая стрельба)
if state = 8
{
    t++;
    switch(t)
    {
        case 60:    instance_create_depth(480,160,depth,obj_boat_algae_fast)     ;
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
        case 500:  instance_create_depth(512,208,depth,obj_powerup_barrel_fastpistol);break;
        case 1200:  t = 0;
                    state = 9;
                    break;
    }
}
#endregion

#region 9 Скелеты направляющиеся в игрока
if state = 9
{
    t++;
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
        case 600:   t = 0;
                    state = 10;
                    break;
    }
    
}
#endregion

#region 10 Камни + водоросли
if state = 10
{
    t++;
    switch(t)
    {
        case 1: instance_create_depth(496,256,depth,obj_boat_stone);
                instance_create_depth(528,128,depth,obj_boat_stone);
                instance_create_depth(576,160,depth,obj_boat_stone);
                instance_create_depth(752,224,depth,obj_boat_stone);
                instance_create_depth(800,256,depth,obj_boat_stone);
                instance_create_depth(912,240,depth,obj_boat_stone);
                instance_create_depth(976,176,depth,obj_boat_stone);
                instance_create_depth(992,208,depth,obj_boat_stone);
                instance_create_depth(1184,128,depth,obj_boat_stone);
                instance_create_depth(1200,192,depth,obj_boat_stone);
                instance_create_depth(1248,160,depth,obj_boat_stone);
                instance_create_depth(1488,256,depth,obj_boat_stone);
                instance_create_depth(1520,208,depth,obj_boat_stone);
                
                instance_create_depth(480,160,depth,obj_boat_algae_fast);
                instance_create_depth(528,192,depth,obj_boat_algae_fast);
                instance_create_depth(544,208,depth,obj_boat_algae_fast);
                instance_create_depth(560,192,depth,obj_boat_algae_fast);
                instance_create_depth(560,240,depth,obj_boat_algae_fast);
                instance_create_depth(576,176,depth,obj_boat_algae_fast);
                instance_create_depth(576,208,depth,obj_boat_algae_fast);
                instance_create_depth(608,224,depth,obj_boat_algae_fast);
                instance_create_depth(624,208,depth,obj_boat_algae_fast);
                instance_create_depth(640,192,depth,obj_boat_algae_fast);
                instance_create_depth(688,176,depth,obj_boat_algae_fast);
                instance_create_depth(944,128,depth,obj_boat_algae_fast);
                instance_create_depth(992,128,depth,obj_boat_algae_fast);
                instance_create_depth(1024,144,depth,obj_boat_algae_fast);
                instance_create_depth(1024,224,depth,obj_boat_algae_fast);
                instance_create_depth(1040,128,depth,obj_boat_algae_fast);
                instance_create_depth(1040,176,depth,obj_boat_algae_fast);
                instance_create_depth(1056,192,depth,obj_boat_algae_fast);
                instance_create_depth(1072,160,depth,obj_boat_algae_fast);
                instance_create_depth(1088,176,depth,obj_boat_algae_fast);
                instance_create_depth(1088,208,depth,obj_boat_algae_fast);
                instance_create_depth(1104,144,depth,obj_boat_algae_fast);
                instance_create_depth(1120,176,depth,obj_boat_algae_fast);
                instance_create_depth(1136,208,depth,obj_boat_algae_fast);
                instance_create_depth(1152,224,depth,obj_boat_algae_fast);
                instance_create_depth(1232,224,depth,obj_boat_algae_fast);
                instance_create_depth(1264,224,depth,obj_boat_algae_fast);
                instance_create_depth(1280,208,depth,obj_boat_algae_fast);
                instance_create_depth(1280,240,depth,obj_boat_algae_fast);
                instance_create_depth(1296,192,depth,obj_boat_algae_fast);
                instance_create_depth(1296,224,depth,obj_boat_algae_fast);
                instance_create_depth(1312,208,depth,obj_boat_algae_fast);
                instance_create_depth(1328,224,depth,obj_boat_algae_fast);
                instance_create_depth(1344,208,depth,obj_boat_algae_fast);
                instance_create_depth(1376,192,depth,obj_boat_algae_fast);
                break;
        case 1400:  t = 0;
                    state = 11;
                    break;
    }
}
#endregion

#region 11 Скелеты волной + скелеты по прямой (быстрая стрельба)
if state = 11
{
    t++;   
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
        case 800:   t = 0;
                    state = 12;
                    break;              
    }
}
#endregion

#region 12 Скелеты стреляющие издалека вверхвниз + скелеты в игрока (Пушка-пулемет)

if state = 12
{
    t++;
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
        case 800:   instance_create_depth(512,208,depth,obj_powerup_barrel_cannon);break;
        case 1000:  t = 0;
                    state = 13;
                    break;
    }
}


#endregion

#region 13 Скелет по прямой + Скелет в игрока + Скелет издалека + мина
if state = 13
{
    t++;
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
        case 800:   t = 0;
                    state = 14;
                    break;
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
                    instance_create_depth(624,112,depth,obj_boat_obstacle_big);
                    instance_create_depth(736,112,depth,obj_boat_obstacle_small);
                    instance_create_depth(1024,192,depth,obj_boat_obstacle_small);
                    
                    instance_create_depth(720,256,depth,obj_boat_stone);
                    instance_create_depth(752,224,depth,obj_boat_stone);
                    instance_create_depth(768,272,depth,obj_boat_stone);
                    instance_create_depth(1008,144,depth,obj_boat_stone);
                    instance_create_depth(1056,128,depth,obj_boat_stone);
                    instance_create_depth(1056,176,depth,obj_boat_stone);
                    
                    instance_create_depth(784,160,depth,obj_boat_algae_fast);
                    instance_create_depth(800,208,depth,obj_boat_algae_fast);
                    instance_create_depth(832,192,depth,obj_boat_algae_fast);
                    instance_create_depth(832,224,depth,obj_boat_algae_fast);
                    instance_create_depth(848,176,depth,obj_boat_algae_fast);
                    instance_create_depth(848,208,depth,obj_boat_algae_fast);
                    instance_create_depth(864,192,depth,obj_boat_algae_fast);
                    instance_create_depth(880,160,depth,obj_boat_algae_fast);
                    instance_create_depth(912,176,depth,obj_boat_algae_fast);
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
    t++;
    
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
        case 600:   instance_create_depth(512,208,depth,obj_powerup_barrel_cannon);break;
        case 800:   t = 0;
                    state = 16;
                    break;
                    
                    
    }
    
}
#endregion

#region 16 Водоросль + мина + Препятствие половина + Скелет в игрока + Скелет по прямой + Скелет издалека

if state = 16
{
    t++;
    switch(t)
    {
        case 50:    instance_create_depth(528,160,depth,obj_boat_mine);
                    instance_create_depth(704,240,depth,obj_boat_mine);
                    instance_create_depth(880,144,depth,obj_boat_mine);
                    
                    instance_create_depth(608,224,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(784,208,depth,obj_skeleton_surf_wave_3hp);
                    
                    instance_create_depth(512,240,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(704,144,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(848,224,depth,obj_skeleton_surf_wave_1hp);
                    instance_create_depth(928,208,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(1024,144,depth,obj_skeleton_surf_wave_3hp);
                    instance_create_depth(1072,224,depth,obj_skeleton_surf_wave_1hp);
                    break;
        
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
                    
        case 1400:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    instance_create_depth(512,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(576,224,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(640,176,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(720,256,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(768,144,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(832,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(896,208,depth,obj_skeleton_surf_1hp);
                    break;
        case 1450:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer_pointing);break;
        case 1550:   instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_2hp);break;
        case 1600:   instance_create_depth(496,224,depth,obj_skeleton_surf_archer);break;
        case 1700:   instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);break;
        case 1750:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer_pointing);break;
        case 1850:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_1hp);break;
    }
}

#endregion

   