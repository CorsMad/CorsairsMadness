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
        case 60 :   var s15 = instance_create_depth(512,208,depth,obj_skeleton_surf_1hp);
                    s15.drop1 = 1;
                    instance_create_depth(592,240,depth,obj_skeleton_surf_1hp);
                    var s1 = instance_create_depth(656,144,depth,obj_skeleton_surf_1hp);
                    s1.drop1 = 1;
                    instance_create_depth(720,192,depth,obj_skeleton_surf_1hp);
                    var s2 = instance_create_depth(832,240,depth,obj_skeleton_surf_1hp);
                    s2.drop1 = 1;
                    var s3 = instance_create_depth(912,176,depth,obj_skeleton_surf_1hp);
                    s3.drop1 = 1;
                    instance_create_depth(1040,208,depth,obj_skeleton_surf_2hp);
                    var t1 = instance_create_depth(1200,144,depth,obj_skeleton_surf_2hp);
                    t1.drop5 = 1;
                    var v6 = instance_create_depth(1344,176,depth,obj_skeleton_surf_2hp);
                    v6.drop10 = 1;
                    instance_create_depth(1392,160,depth,obj_skeleton_surf_2hp);
                    var t2 = instance_create_depth(1456,144,depth,obj_skeleton_surf_2hp);
                    t2.drop5 = 1;
                    break;  

    }
    
}

#endregion

#region 2 Скелеты закругляющиеся и по прямой
if state = 2
{
    if t < 200
    {
        t++;
    }
    
    if t = 200 && !instance_exists(obj_skeleton_surf_wave_2hp) &&
    !instance_exists(obj_skeleton_surf_wave_3hp) && !instance_exists(obj_skeleton_surf_wave_3hp) && 
    !instance_exists(obj_skeleton_surf_1hp) 
    {
        state = 3;
        t = 0;
    }

    
    switch(t)
    {
        case 60 :   var s4 = instance_create_depth(576,256,depth,obj_skeleton_surf_wave_1hp);
                    s4.drop1 = 1;
                    break;
        case 80 :   instance_create_depth(592,208,depth,obj_skeleton_surf_wave_1hp);break;
        case 100 :  var t3 = instance_create_depth(640,272,depth,obj_skeleton_surf_wave_2hp);
                    t3.drop5 = 1;
                    var s5 = instance_create_depth(592,240,depth,obj_skeleton_surf_1hp);
                    s5.drop1 = 1;
                    var s14 = instance_create_depth(656,144,depth,obj_skeleton_surf_1hp);
                    s14.drop1 = 1;
                    instance_create_depth(720,192,depth,obj_skeleton_surf_1hp);
                    var s6 = instance_create_depth(832,240,depth,obj_skeleton_surf_1hp);
                    s6.drop1 = 1;
                    break;           
        case 120 :  var t8 = instance_create_depth(656,224,depth,obj_skeleton_surf_wave_2hp);
                    t8.drop5 = 1;
                    break;               
        case 140 :  var v1 = instance_create_depth(720,240,depth,obj_skeleton_surf_wave_3hp);
                    v1.drop10 = 1;
                    break;  
        
    }
}
#endregion

#region Скелеты лучники
if state = 3
{
    if t < 560
    {
        t++;
    }
    if t = 560 && !instance_exists(obj_skeleton_surf_archer) && !instance_exists(obj_skeleton_surf_2hp)
    && !instance_exists(obj_skeleton_surf_3hp)
    {
        state = 4;
        t = 0;
    }
    switch(t)
    {
        case 60:    var v2 = instance_create_depth(512,208,depth,obj_skeleton_surf_archer);
                    v2.drop10 = 1;
                    break;
        case 200:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);
                    var v3 = instance_create_depth(512,256,depth,obj_skeleton_surf_archer);
                    v3.drop10 = 1;
                    break;
        case 500:   instance_create_depth(592,208,depth,obj_skeleton_surf_3hp);
                    var t4 = instance_create_depth(784,240,depth,obj_skeleton_surf_2hp);
                    t4.drop5 = 1;
                    break;
        case 550:   instance_create_depth(496,272,depth,obj_skeleton_surf_archer);
                    var v7 = instance_create_depth(512,192,depth,obj_skeleton_surf_archer);
                    v7.drop10 = 1;
                    break;
    }
}
#endregion

#region 4 Камни SAVE
if state = 4
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
                    break;
        case 500:   t = 0;
                    state = 5;
                    global.money_saved = global.gold;
                    global.boatCheckpoint = 1;
                    instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
                    break;        
   }
}
#endregion

#region 5 Получение power лучники, волны 

if state = 5
{
    if t < 660 t++;
    if t = 660 && !instance_exists(obj_skeleton_surf_archer) && !instance_exists(obj_skeleton_surf_pointing_2hp)
    && !instance_exists(obj_skeleton_surf_pointing_1hp) && !instance_exists(obj_skeleton_surf_pointing_3hp)
    {
        t = 0;    
        state = 6;
    }
    
    switch(t)
    {
        case 50:    instance_create_depth(512,208,depth,obj_powerup_barrel_fastpistol);break;
        case 260:   instance_create_depth(496,256,depth,obj_skeleton_surf_archer);break;
        case 300:   var t5 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_2hp);
                    t5.drop5 = 1;
                    break;
        case 400:   instance_create_depth(496,160,depth,obj_skeleton_surf_archer);break;
        case 450:   var s7 = instance_create_depth(512,176,depth,obj_skeleton_surf_pointing_1hp);
                    s7.drop1 = 1;
                    break;
        case 550:   instance_create_depth(496,224,depth,obj_skeleton_surf_archer);break;
        case 600:   var s8 = instance_create_depth(512,240,depth,obj_skeleton_surf_pointing_1hp);
                    s8.drop1 = 1;
                    break;
        case 700:   instance_create_depth(496,176,depth,obj_skeleton_surf_archer);break;
        case 750:   var v4 = instance_create_depth(512,208,depth,obj_skeleton_surf_pointing_3hp);
                    v4.drop10 = 1;
                    break;            
    }
}

#endregion

#region 6 

if state = 6
{
    if t < 200 t++;
    
    if t = 200 && !instance_exists(obj_skeleton_surf_1hp) && !instance_exists(obj_skeleton_surf_2hp) && !instance_exists(obj_skeleton_surf_wave_1hp) && !instance_exists(obj_skeleton_surf_wave_2hp) && !instance_exists(obj_skeleton_surf_wave_3hp)
    {
        t = 0;
        state = 7;   
    }
    
    
    
    switch(t)
    {
        case 60:    var t6 = instance_create_depth(512,208,depth,obj_skeleton_surf_2hp);
                    t6.drop5 = 1;
                    var s9 = instance_create_depth(592,144,depth,obj_skeleton_surf_1hp);
                    s9.drop1 = 1;
                    instance_create_depth(672,224,depth,obj_skeleton_surf_1hp);
                    var s10 = instance_create_depth(784,240,depth,obj_skeleton_surf_2hp);
                    s10.drop1 = 1;                    
                    instance_create_depth(848,176,depth,obj_skeleton_surf_1hp);
                    var s11 = instance_create_depth(944,144,depth,obj_skeleton_surf_1hp);
                    s11.drop1 = 1;
                    break;
                    
        case 70:    var s12 = instance_create_depth(512,256,depth,obj_skeleton_surf_wave_1hp);
                    s12.drop1 = 1;
                    break;
        case 90:    var t7 = instance_create_depth(576,192,depth,obj_skeleton_surf_wave_2hp);
                    t7.drop5 = 1;
                    break;
        case 110:   var s13 = instance_create_depth(624,224,depth,obj_skeleton_surf_wave_1hp);
                    s13.drop1 = 1;
                    break;
        case 130:   var v5 = instance_create_depth(672,208,depth,obj_skeleton_surf_wave_3hp);
                    v5.drop10 = 1;
                    break;     
    }
}

#endregion

#region 7 Камни+ тина
if state = 7
{
    if t < 810 t++; 
    if t = 810 
    {
        t = 0;
        state = 8;
    }
    
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
    }
}

#endregion

#region 8 Перед концом

if state = 8
{
    t++;
    if t = 150
    {
        t = 0;
        state = 9;
    }
}


#endregion

#region 9 - Скорость задников

layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
//layer_hspeed(l_Skies,sp_skies);


if state = 9
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
        obj_Player_boat.state = 101; 
        obj_Player_boat.canControl = 0;
    }
    
 
}

#endregion

#endregion






