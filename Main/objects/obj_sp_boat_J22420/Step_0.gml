/// @description Insert description here
// You can write your code in this editor

#region Счетчик

#region 1 - волновые и в игрока

if state = 1
{
    if t < 150 t++;
    if t = 150 && !instance_exists(obj_skeleton_surf_wave_1hp) 
    && !instance_exists(obj_skeleton_surf_pointing_1hp)
    && !instance_exists(obj_skeleton_surf_wave_2hp)
    && !instance_exists(obj_skeleton_surf_pointing_2hp)
    {
        t = 0;
        state = 2;
    }
    
    switch(t)
    {
        case 60 :   var a1 = instance_create_depth(576,256,depth,obj_skeleton_surf_wave_1hp);
                    a1.drop1 = 1;
                    instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_1hp);
                    break;
        case 80 :   //instance_create_depth(592,208,depth,obj_skeleton_surf_wave_2hp);
                    var a2 = instance_create_depth(528,144,depth,obj_skeleton_surf_pointing_1hp);
                    a2.drop1 = 1;
                    break;
        case 100 :  instance_create_depth(640,272,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(528,256,depth,obj_skeleton_surf_pointing_1hp)
                    break;           
        case 120 :  instance_create_depth(656,224,depth,obj_skeleton_surf_wave_2hp);break;               
        case 140 :  //instance_create_depth(720,240,depth,obj_skeleton_surf_wave_2hp);
                    instance_create_depth(528,208,depth,obj_skeleton_surf_pointing_2hp);
                    break;  
        
       
    }
}


#endregion

#region 2 - обычные серферы + стрелки в игрока

if state = 2
{
    if t < 310 t++;
    if t = 310 && !instance_exists(obj_skeleton_surf_1hp)
    && !instance_exists(obj_skeleton_surf_2hp)
    && !instance_exists(obj_skeleton_surf_archer_pointing)
    {
        t = 0;
        state = 3;
    }
    
    switch(t)
    {
        case 60 :   var a3 = instance_create_depth(512,208,depth,obj_skeleton_surf_1hp);
                    a3.drop1 = 1;
                    instance_create_depth(592,240,depth,obj_skeleton_surf_1hp);
                    //instance_create_depth(656,144,depth,obj_skeleton_surf_1hp);
                    var a4 = instance_create_depth(720,192,depth,obj_skeleton_surf_1hp);
                    a4.drop1 = 1;
                    //instance_create_depth(832,240,depth,obj_skeleton_surf_1hp);
                    var a5 = instance_create_depth(912,176,depth,obj_skeleton_surf_1hp);
                    a5.drop1 = 1;
                    //instance_create_depth(1040,208,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1200,144,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(1344,176,depth,obj_skeleton_surf_2hp);
                    //instance_create_depth(1392,160,depth,obj_skeleton_surf_2hp);
                    var b1 = instance_create_depth(1456,144,depth,obj_skeleton_surf_2hp);  
                    b1.drop5 = 1;
                    instance_create_depth(528,144,depth,obj_skeleton_surf_archer_pointing); 
                    break;
        case 200:   instance_create_depth(512,224,depth,obj_skeleton_surf_archer_pointing); 
                    break;
                    
        case 300:   instance_create_depth(496,144,depth,obj_skeleton_surf_archer_pointing);
                    break;
    }
}

#endregion

#region 3 - 3 бомбы

if state = 3
{
    if t < 5 t++;
    if t = 5 && !instance_exists(obj_boat_mine)
    {
        t = 0;
        state = 4;
        global.money_saved = global.gold;
        global.boatCheckpoint = 1;
        instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
    }
    switch(t)
    {
        case 1 :    instance_create_depth(704,272,depth,obj_boat_mine);
                    instance_create_depth(896,160,depth,obj_boat_mine);
                    instance_create_depth(944,224,depth,obj_boat_mine);
                    instance_create_depth(1152,256,depth,obj_boat_mine);
                    instance_create_depth(1328,192,depth,obj_boat_mine);
                    break;
    }
}

#endregion

#region 4 - Поверап

if state = 4
{
    if t < 800 t++;
    if t = 800 
    {
        state = 5;
        t =0;
    }
    
    switch(t)
    {
        case 1 :    instance_create_depth(544,192,depth,obj_powerup_barrel_fastpistol);break; 
        case 120:   instance_create_depth(512,192,depth,obj_boat_stone);
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
                    
        case 200:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_2hp);break;
        case 280:   instance_create_depth(512,208,depth,obj_skeleton_surf_wave_3hp);break;
        case 400:   var b2 = instance_create_depth(512,224,depth,obj_skeleton_surf_wave_2hp);
                    b2.drop5 = 1;
                    break;
        case 480:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_3hp);break;
        case 620:   instance_create_depth(512,256,depth,obj_skeleton_surf_wave_3hp);break;
    }
}
#endregion

#region 5 - Водоросли бомбы

if state = 5
{
    if t < 500 t++;
    if t = 500
    {
        t = 0;
        state = 6;
    }
    
    switch(t)
    {
        case 1:     instance_create_depth(480,160,depth,obj_boat_algae_fast);
                    instance_create_depth(528,128,depth,obj_boat_algae_fast);
                    instance_create_depth(560,176,depth,obj_boat_algae_fast);
                    instance_create_depth(560,208,depth,obj_boat_algae_fast);
                    instance_create_depth(560,240,depth,obj_boat_algae_fast);
                    instance_create_depth(576,224,depth,obj_boat_algae_fast);
                    instance_create_depth(592,128,depth,obj_boat_algae_fast);
                    instance_create_depth(592,160,depth,obj_boat_algae_fast);
                    instance_create_depth(592,256,depth,obj_boat_algae_fast);
                    instance_create_depth(608,144,depth,obj_boat_algae_fast);
                    instance_create_depth(608,192,depth,obj_boat_algae_fast);
                    instance_create_depth(608,224,depth,obj_boat_algae_fast);
                    instance_create_depth(608,240,depth,obj_boat_algae_fast);
                    instance_create_depth(624,160,depth,obj_boat_algae_fast);
                    instance_create_depth(624,176,depth,obj_boat_algae_fast);
                    instance_create_depth(624,208,depth,obj_boat_algae_fast);
                    instance_create_depth(640,112,depth,obj_boat_algae_fast);
                    instance_create_depth(640,256,depth,obj_boat_algae_fast);
                    instance_create_depth(482,208,depth,obj_boat_algae_fast);
          
                    instance_create_depth(480+130,160,depth,obj_boat_algae_fast);
                    instance_create_depth(528+130,128,depth,obj_boat_algae_fast);
                    instance_create_depth(560+130,176,depth,obj_boat_algae_fast);
                    instance_create_depth(560+130,208,depth,obj_boat_algae_fast);
                    instance_create_depth(560+130,240,depth,obj_boat_algae_fast);
                    instance_create_depth(576+130,224,depth,obj_boat_algae_fast);
                    instance_create_depth(592+130,128,depth,obj_boat_algae_fast);
                    instance_create_depth(592+130,160,depth,obj_boat_algae_fast);
                    instance_create_depth(592+130,256,depth,obj_boat_algae_fast);
                    instance_create_depth(608+130,144,depth,obj_boat_algae_fast);
                    instance_create_depth(608+130,192,depth,obj_boat_algae_fast);
                    instance_create_depth(608+130,224,depth,obj_boat_algae_fast);
                    instance_create_depth(608+130,240,depth,obj_boat_algae_fast);
                    instance_create_depth(624+130,160,depth,obj_boat_algae_fast);
                    instance_create_depth(624+130,176,depth,obj_boat_algae_fast);
                    instance_create_depth(624+130,208,depth,obj_boat_algae_fast);
                    instance_create_depth(640+130,112,depth,obj_boat_algae_fast);
                    instance_create_depth(640+130,256,depth,obj_boat_algae_fast);
                    instance_create_depth(482+130,208,depth,obj_boat_algae_fast);
                    
                    instance_create_depth(562,272,depth,obj_boat_mine);
                    instance_create_depth(672,160,depth,obj_boat_mine);
                    instance_create_depth(740,224,depth,obj_boat_mine);
                    instance_create_depth(834,256,depth,obj_boat_mine);
                    instance_create_depth(942,192,depth,obj_boat_mine);
                    break;
                    
    }
}


#endregion

#region 6 - обычные скел серфер волн бомб

if state = 6
{
    if t < 80 t++;
    if t = 80 && !instance_exists(obj_skeleton_surf_wave_1hp)
    && !instance_exists(obj_skeleton_surf_wave_2hp)
    && !instance_exists(obj_skeleton_surf_wave_3hp)
    && !instance_exists(obj_skeleton_surf_2hp)
    && !instance_exists(obj_skeleton_surf_3hp)
    && !instance_exists(obj_skeleton_surf_1hp)
    && !instance_exists(obj_boat_mine)
    {
        t = 0;
        state = 7;
        global.money_saved = global.gold;
        global.boatCheckpoint = 2;
        instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
    }
    
    switch(t)
    {
       case 60:     var a6 = instance_create_depth(512,256,depth,obj_skeleton_surf_wave_1hp);
                    a6.drop1 = 1;
                    instance_create_depth(576,192,depth,obj_skeleton_surf_wave_2hp);
                    var a7 = instance_create_depth(624,224,depth,obj_skeleton_surf_wave_1hp);
                    a7.drop1 =1 ;
                    var c1 = instance_create_depth(672,208,depth,obj_skeleton_surf_wave_3hp);
                    c1.drop10 = 1;
                    
                    var b3 = instance_create_depth(544,272,depth,obj_skeleton_surf_2hp);
                    b3.drop5 = 1;
                   // instance_create_depth(640,208,depth,obj_skeleton_surf_2hp);
                    instance_create_depth(736,144,depth,obj_skeleton_surf_2hp);
                    var b4 = instance_create_depth(800,176,depth,obj_skeleton_surf_2hp);
                    b4.drop5 = 1;
                   // instance_create_depth(864,256,depth,obj_skeleton_surf_3hp);
                    var c2 = instance_create_depth(992,176,depth,obj_skeleton_surf_3hp);
                    c2.drop10 = 1;
                    //instance_create_depth(1008,256,depth,obj_skeleton_surf_3hp);
                    var c3 = instance_create_depth(1088,224,depth,obj_skeleton_surf_3hp);
                    c3.drop10 = 1;
                    //instance_create_depth(1168,160,depth,obj_skeleton_surf_2hp);
                    var a8 = instance_create_depth(1264,256,depth,obj_skeleton_surf_1hp);
                    a8.drop1 =1 ;
                    var c4 = instance_create_depth(1392,272,depth,obj_skeleton_surf_3hp);
                    c4.drop10 = 1;
                    //instance_create_depth(1408,208,depth,obj_skeleton_surf_1hp);
                    
                    //instance_create_depth(562,272,depth,obj_boat_mine);
                    instance_create_depth(672,160,depth,obj_boat_mine);
                    //instance_create_depth(740,224,depth,obj_boat_mine);
                    //instance_create_depth(834,256,depth,obj_boat_mine);
                    instance_create_depth(942,192,depth,obj_boat_mine);
                    
                    break; 
    }
}

#endregion

#region 7 = бомбы + стрелки

if state = 7
{
    if t < 600 t++;
    if t = 600 && !instance_exists(obj_skeleton_surf_archer)
    && !instance_exists(obj_skeleton_surf_pointing_2hp)
    && !instance_exists(obj_boat_mine)
    && !instance_exists(obj_skeleton_surf_pointing_1hp)
    && !instance_exists(obj_skeleton_surf_pointing_3hp)
    {
        state = 8;
        t = 0;
    }
    
    switch(t)
    {
            case 1:     instance_create_depth(544,192,depth,obj_powerup_barrel_fastpistol);
                        break;
            case 60:    var c5 = instance_create_depth(496,256,depth,obj_skeleton_surf_archer);
                        c5.drop10 = 1;
                        break;
            case 100:   instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                        instance_create_depth(704,224,depth,obj_boat_mine);
                        //instance_create_depth(896,256,depth,obj_boat_mine);
                        instance_create_depth(944,192,depth,obj_boat_mine);
                        //instance_create_depth(1152,224,depth,obj_boat_mine);
                        instance_create_depth(1328,160,depth,obj_boat_mine);
                        break;
            case 200:   var c6 = instance_create_depth(496,160,depth,obj_skeleton_surf_archer);
                        c6.drop10 = 1;
                        break;
            case 250:   instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_1hp);break;
            case 350:   var c7 = instance_create_depth(496,224,depth,obj_skeleton_surf_archer);
                        c7.drop10 = 1;
                        break;
            case 400:   var a9 = instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);
                        a9.drop1 = 1;
                        break;
            case 500:   var c8 = instance_create_depth(496,176,depth,obj_skeleton_surf_archer);
                        c8.drop10 = 1;
                        break;
            case 550:   var c9 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_3hp);
                        c9.drop10 = 1;
                        break;

    }
}

#endregion

#region 8 препятствия и камни

if state = 8
{
    if t < 1100 t++;
    if t = 1100
    {
        state = 9;
        t = 0;
    }
    switch(t)
    {
            case 60:        instance_create_depth(496,112,depth,obj_boat_obstacle_big);
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
                            break;
    }
}

#endregion

#region 9

if state = 9
{
    if t < 600 t++;
    if t = 600 && !instance_exists(obj_skeleton_surf_archer)
    && !instance_exists(obj_skeleton_surf_pointing_2hp)
    && !instance_exists(obj_skeleton_surf_pointing_1hp)
    && !instance_exists(obj_skeleton_surf_pointing_3hp)
    {
        state = 10;
        t = 0;
        global.money_saved = global.gold;
        global.boatCheckpoint = 2;
        instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
    }
    switch(t)
    {
        case 60:    var c10 = instance_create_depth(496,256,depth,obj_skeleton_surf_archer);
                    c10.drop10 = 1;
                    break;
        case 100:   var b5 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    b5.drop5 = 1;
                    break;
        case 200:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);break;
        case 250:   var a10 = instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_1hp);
                    a10.drop1 = 1;
                    break;
        case 350:   var c11 = instance_create_depth(496,224,depth,obj_skeleton_surf_archer);
                    c11.drop10 = 1;
                    break;
        case 400:   instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);break;
        case 500:   var c12 = instance_create_depth(496,176,depth,obj_skeleton_surf_archer);
                    c12.drop10 = 1;
                    break;
        case 550:   var c13 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_3hp);
                    c13.drop10 = 1;
                    break;
    }
}

#endregion
                   
#region 10

if state = 10
{
    if t < 2100 t++;
    if t = 2100 && !instance_exists(obj_skeleton_surf_archer_pointing)
    && !instance_exists(obj_skeleton_surf_pointing_2hp)
    && !instance_exists(obj_skeleton_surf_1hp)
    && !instance_exists(obj_skeleton_surf_archer)
    && !instance_exists(obj_skeleton_surf_archer)
    {
        state = 16.5;
        t = 0;
    }
    
    switch(t)
    {
        case 1:     instance_create_depth(512,208,depth,obj_powerup_barrel_cannon); break;   
        case 100:   instance_create_depth(732,208,depth,obj_skeleton_surf_wave_2hp);break;
        case 125:   var c14 = instance_create_depth(870,208,depth,obj_skeleton_surf_wave_3hp);
                    c14.drop10 = 1;
                    break;       
        case 150:   var c15 = instance_create_depth(1050,208,depth,obj_skeleton_surf_wave_3hp);
                    c15.drop10 = 1;
                    break;  
        case 175:   var c16 = instance_create_depth(1160,220,depth,obj_skeleton_surf_wave_3hp);
                    c16.drop10 = 1;
                    break; 
        case 200:   var c17 = instance_create_depth(1400,220,depth,obj_skeleton_surf_wave_3hp);
                    c17.drop10 = 1;
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
                    var b6 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    b6.drop5 = 1;
                    var a11 = instance_create_depth(512,192,depth,obj_skeleton_surf_1hp);
                    a11.drop1 = 1;
                    instance_create_depth(576,224,depth,obj_skeleton_surf_1hp);
                    var a12 = instance_create_depth(640,176,depth,obj_skeleton_surf_1hp);
                    a12.drop1 = 1;
                    instance_create_depth(720,256,depth,obj_skeleton_surf_1hp);
                    var a13 = instance_create_depth(768,144,depth,obj_skeleton_surf_1hp);
                    a13.drop1 = 1;
                    instance_create_depth(832,192,depth,obj_skeleton_surf_1hp);
                    instance_create_depth(896,208,depth,obj_skeleton_surf_1hp);

        case 1650:  var c18 = instance_create_depth(496,160,depth,obj_skeleton_surf_archer_pointing);
                    c18.drop10 = 1;    
                    instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    var a14 = instance_create_depth(512,192,depth,obj_skeleton_surf_1hp);
                    a14.drop1 = 1;
                    instance_create_depth(576,224,depth,obj_skeleton_surf_1hp);
                    var a15 = instance_create_depth(640,176,depth,obj_skeleton_surf_1hp);
                    a15.drop1 =1 ;
        
        
                    break;
        case 1750:  var b7 = instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_2hp);
                    b7.drop5 = 1;
                    break;
        case 1800:  var c19 = instance_create_depth(496,224,depth,obj_skeleton_surf_archer);
                    c19.drop10 = 1;
                    break;
        case 1900:  instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_2hp);break;
        case 1950:  instance_create_depth(496,176,depth,obj_skeleton_surf_archer_pointing);break;
        case 2050:  var c20 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    c20.drop10 = 1;
                    break;
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
        obj_Player_boat.canControl = 0;
        obj_Player_boat.state = 10;
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
        instance_create_depth(0,0,-1000000,obj_boat_menu_end_j2);   
    }
    
 
}

#endregion