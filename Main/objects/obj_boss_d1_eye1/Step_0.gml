/// @description Insert description here
// You can write your code in this editor


t++;
if t > 400 
{
    state = 1
} else state = 0

if t = 2000
{
    t = 0;   
}

if state = 2 // Уничтожение
{
    if t > 2050 instance_destroy();   
}


// взаимодействие со стрелой
if state = 1
{
    var oleg = instance_place(x,y,obj_abil_arbalet_proj)
    if oleg != noone
    {
        oleg.isDead = 1
        state = 2;
        t = 2002
        obj_boss_d1_2.state = 6;
        obj_boss_d1_2.t = 0;
    }
}