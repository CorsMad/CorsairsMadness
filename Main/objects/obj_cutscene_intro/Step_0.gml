/// @description Insert description here
// You can write your code in this editor

t++;

if t > 60 && t < 100
{
    if alpha < 1 alpha+=0.1;
}

if t > 250 
{
    if alpha > 0 alpha -=0.1;   
}

if t > 250 && alpha <=0 && page < 3
{
    if page < 3 page++;
    t = 0;
}

if page > 2 
{
    t++;
    if t > 500
    {
        room_goto(Tutor1);   
    }
}