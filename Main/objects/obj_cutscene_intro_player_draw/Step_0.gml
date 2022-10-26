/// @description Insert description here
// You can write your code in this editor

/*
states
0 - начало
1 - очухиваание
2 - поворот+ шок
21 - текстбокс
3 - поворорт назад + раздумья
4 - доставание меча
5 - анимация бега + бег вправо
*/


#region Начало
if state = 0 
{
    if t = 50 obj_cutscene_rect_r.start = 1;
    t++;
    if t mod 30 = 0 subimg++;
    if t = 350 
    {
        t = 0;
        subimg = 0;
        state = 1;
        sprite = spr_pl_cts_intro_wakeup;
    }
}
#endregion

#region Очух
if state = 1
{
    t++;
    switch(t)
    {
        case 10:    subimg = 1;break;
        case 50:    subimg = 2;break;
        case 100:   subimg = 3;break;
        case 105:   subimg = 4;break;
        case 110:   subimg = 3;break;
        case 115:   subimg = 4;break;
        case 120:   subimg = 2;break;
        case 160:   subimg = 5;break;
        case 170:   subimg = 6;break;
        case 250:   state = 2;
                    t = 0;
                    sprite = spr_pl_cts_intro_shock;
                    subimg = 0;
                    break;   
           
    }
}
#endregion

#region Поворот+ шок
if state = 2
{
    
    t++; 
    
    if t = 50 obj_cutscene_rect_l.start = 1;
    if t > 100 
    {
        if t mod 5 = 0 subimg++;   
    }
    if t = 129 
    {
        t = 0;
        state = 21;
        instance_create_depth(x,y,depth,obj_txt_cutscene_intro1);
    }
}
#endregion

#region Текстбокс
if state = 21
{
       
}
#endregion

#region Поворот + раздумья

if state = 22
{
    sprite = spr_pl_cts_intro_thinking;
}
#endregion

#region Доставание меча

if state = 3
{
    t++;
    sprite = spr_pl_cts_intro_takesword;
    switch(t)
    {
        case 1: subimg = 0;break;   
        case 50: subimg = 1;break;   
        case 55: subimg = 2;break;   
        case 60: subimg = 3;break;   
        case 100: 
                state = 4;
                t = 0;
                sprite = spr_player_run;
                subimg = 0;
    }
}
#endregion

#region Уход

if state = 4
{
    t++;
    if t mod 5 = 0 subimg++;
    x_pos+=2;
    if t = 100 room_goto(TutorFirstLoading);
}

#endregion











