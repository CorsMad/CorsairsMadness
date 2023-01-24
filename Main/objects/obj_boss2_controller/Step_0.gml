/// @description Insert description here
// You can write your code in this editor
/*
///////////// States

0 начало и призыв 1 фазы
1 - ожидание
2 - призыв 1 междуфазья
3 - ожидание
3 - призыв 2 фазы
4 - ожидание
5 - призыв 2 междфазья
6 - ожидание
6 - призыв 3 фазы
7 - ожидание

*/

#region Призыв 1 фазы
if state = 0
{
    if t = 50 
    {
        instance_create_depth(0,256,400,obj_boss2_walls);
        fnc_msc_play(msc_j2_boss);
    }
    
    t++;
    if t = 200 
    {
        //призыв 1 фазы   
        t = 0;
        state = 1;
        instance_create_depth(576,64,0,obj_bossj2_phase1);
    }
}

#endregion

#region 1 междуфазье

if state = 2.1
{
    if t < 61 t++;   
    if t = 60 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 2.2;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 2.2;  
        }
    }
}
if state = 2.2
{
    if t < 61 t++;   
    if t = 60 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 2.3;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 2.3;  
        }
    }
}
if state = 2.3
{
    if t < 61 t++;   
    if t = 60 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 3;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark);
            m.future_state = 3;  
        }
    }
}

#endregion

#region 3 ожидание призыв 2 фазы

if state = 3
{
    t++;
    if t = 100
    {
        instance_create_depth(576,128,0,obj_bossj2_phase2);  
        t = 0;
        state = 4;
    }
}
#endregion

#region междуфазье 2

if state = 5.1
{
    if t < 61 t++;   
    if t = 60 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 5.2;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 5.2;  
        }
    }
}
if state = 5.2
{
    if t < 31 t++;   
    if t = 30 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 5.3;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 5.3;  
        }
    }
}
if state = 5.3
{
    if t < 21 t++;   
    if t = 20 
    {
        if obj_Player.x < room_width/2
        {
            var m = instance_create_depth(432,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 6;
        } else 
        {
            var m = instance_create_depth(48,obj_Player.y-18,0,obj_boss2j_exclmark2);
            m.future_state = 6;  
        }
    }
}


#endregion

#region Призыв 3 фазы

if state = 6
{
    t++;
    if t = 2
    {
        obj_boss2_switch.state = 1;   
    }
    if t = 100 
    {
        //призыв 3 фазы   
        t = 0;
        state = 7;
        instance_create_depth(576,64,0,obj_bossj2_phase3);
    }
}

#endregion