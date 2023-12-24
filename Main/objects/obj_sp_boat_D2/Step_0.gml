/// @description Insert description here
// You can write your code in this editor
/*
0 - появление 1 фазы
1 - ожидание
2 - появление второй фазы
3 - ожидание
4 - появление 3-й фазы
5 - ожидание 
6 - конец
*/
switch(state)
{
    case 0:
        t++;
        if t = 100
        {
            var ph1 = instance_create_depth(592,176,0,obj_boat_boss_desert_appear);
            ph1.boss_phase = obj_boat_boss_desert_phase1;
            t = 0;
            state = 1;
        }
        break;
    case 2:
        t++;
        if t = 100
        {
            var ph1 = instance_create_depth(592,176,0,obj_boat_boss_desert_appear);
            ph1.boss_phase = obj_boat_boss_desert_phase2;
            t = 0;
            state = 3;
        }
        break;
    case 3:
        global.boatCheckpoint = 1;
        break;
    case 4:
        t++;
        if t = 100
        {
            var ph1 = instance_create_depth(592,176,0,obj_boat_boss_desert_appear);
            ph1.boss_phase = obj_boat_boss_desert_phase3;
            t = 0;
            state = 5;
        }
        break;
    case 5:
        global.boatCheckpoint = 2;
        break;
}


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

#region 17 - Скорость задников

layer_hspeed(l_water,sp_wat);
layer_hspeed(l_farwater,sp_farwat);
layer_hspeed(l_toofarwater,sp_toofarwat);
//layer_hspeed(l_Skies,sp_skies);


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
        instance_create_depth(0,0,-1000000,obj_boat_menu_end_d2);   
    }
    
 
}

#endregion