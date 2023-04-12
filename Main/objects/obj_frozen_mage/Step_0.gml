/// @description Insert description here
// You can write your code in this editor

if place = 0
{
    if abs(obj_Player.x-x) <96 && abs(obj_Player.y-y) < 96
    {
        isAttacking = 1;  
    }
}


if isAttacking = 1
{
    t++;
    if t = 100 {} // выстрел
    if t = 200 
    {
        t = 0;
        isAttacking = 0;
        place = 1
        place_goto = irandom(3);
        mask_index = -1;
    }
}

if place = 1 
{
    t++;
    if t = 100
    {
        t = 0;
        place = 2;
    }
    //invis   
}


if place = 2 // переход
{
    t++;
    if t = 100 
    {
        t = 0;
        switch(place_goto)
        {
            case 0: x = pg0x; y = pg0y;break;
            case 1: x = pg1x; y = pg1y;break;
            case 2: x = pg2x; y = pg2y;break;
            case 3: x = pg3x; y = pg4y;break;
        }
        place = 0;
        mask_index = 1;
    }
}