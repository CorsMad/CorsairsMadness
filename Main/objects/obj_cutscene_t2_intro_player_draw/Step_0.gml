/// @description Insert description here
// You can write your code in this editor

/*
states
0 - начало
1 - вставание
2 - idle1
3 - диалог
4 - idle2
5 - Затемнение
6 - переход/загрузка

*/

#region Начало

if state = 0
{
    t++;
    if t = 100
    {
        t = 0;
        state = 1;
    }
}
#endregion

#region вставание

if state = 1
{   
    t++;
    if t = 30 subimg = 1;
    if t = 40 state = 2;
}

#endregion

#region idle1

if state = 2
{
    sprite = spr_player_masked_idle;
    t++;
    subimg = 0;
    state = 3;
    instance_create_depth(x,y,depth,obj_txt_cutscene_t2_start);
}

#endregion

#region диалог
if state = 3
{
       
}
#endregion

#region idle2

if state = 4
{
    t++;
    if t mod 5 = 0 subimg ++;
    obj_cutscene_t2_intro_rect.start = 1;
}
#endregion

#region Затемнение
#endregion

#region переход/загрузка
#endregion