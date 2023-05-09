/// @description Insert description here
// You can write your code in this editor

/*
mov
0 - ожидание
1 - выдвижение
2 - ожидание впереди
3 - назад
*/

if mov = 0
{
    if t < 150 t++;
    if t = 140 instance_create_depth(416,176,0,obj_magicarrow_target_d2_boss_appear_l);
    
}
if mov = 1
{
    x+=6;
    if x >=96
    {
        x = 96;
        mov = 2;
        t = 0;
    }
}

if mov = 2
{
    t++;
    if t = 50
    {
        t = 0;
        mov = 3;
    }
}

if mov = 3
{
    x-= 6; 
    if x <= -112
    {
        x = -112;
        mov = 0;
        t = 0;
    }
}