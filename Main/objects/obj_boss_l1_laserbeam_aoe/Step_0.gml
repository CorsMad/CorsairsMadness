/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if pos = 1
    {
        x-=2;
        if x <= 240+48+8
        {
            x = 240+48+8;
            state = 1;
        }
    }
    
    if pos = -1
    {
        x+=2;
        if x >= 240-48-8
        {
            x = 240-48-8;
            state = 1;
        }
    }
}