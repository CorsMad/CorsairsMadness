/// @description Insert description here
// You can write your code in this editor

t = 0;
if instance_exists(obj_Player)
{
    obj_Player.isDead = 2;   
}

/*
STATES

0 - начало игрок бежит и прыгает
1 - игрок соприкасается с лодкой
2 - контроль лодки
3 - переход
*/
state = 0;