/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - ожидание
2 - полет влево по кругу + стрельба
3 - ожидание
4 - полет вправо по кругу + стрельба
5 - ожидание
6 - полет влево быстро
7 - ожидание
8 - полет вправо медленно + отдых
9 - ожидание -> 2
*/


x += hspd;
y += vspd;

#region 0 - появление

if state = 0
{
    hspd =- 1;
    if x <= 416 
    {
        x = 416;
        hspd = 0;
        state = 1;
    }
}
#endregion

#region 1 - ожидание

if state = 1
{
    t++;
    
    if t = 50
    {
        t = 0;
        state = 2;
    }
}

#endregion

#region 2 - полет влево по кругу + стрельба

if state = 2
{
    t++;
    if (((t mod 70 = 0) && t < 270 ) || t = 1 ) instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
    
    if t = 280
    {
        t = 0;
        state = 3;
    }
}
#endregion

#region 3 - ожидание

if state = 3
{
    t++;
    if t = 50
    {
        t = 0;
        state = 4;
    }
}

#endregion

#region 4 - полет вправо по кругу + стрельба

if state = 4
{
    t++;
    if (((t mod 70 = 0) && t < 270 ) || t = 1 ) instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
    if t = 280
    {
        t = 0;
        state = 5;
    }
}

#endregion

#region 5 - ожидание

if state = 5
{
    t++;
    if t = 50
    {
        t = 0;
        state = 6;
    }
}
#endregion

#region 6 - полет влево быстро

if state = 6
{
    hspd = -3;
    if x <= 64 
    {
        x = 64;
        hspd = 0;
        state = 7;
    }
}

#endregion

#region 7 - ожидание

if state = 7
{
    t++;
    if t = 50
    {
        state = 8;
        t = 0;
    }
}

#endregion

#region 8 - полет вправо медленно + отдых

if state = 8
{
    hspd=1;
    if x >= 416
    {
        x = 416;
        hspd = 0;
        state = 9;
    }
}

#endregion

#region 9 - ожидание -> 2

if state = 9
{
    t++;
    if t = 100
    {
        t = 0;
        state = 2;
    }
}
#endregion




