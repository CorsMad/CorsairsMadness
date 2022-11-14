/// @description Insert description here
// You can write your code in this editor

/*
timer - таймер

states
1 - idle
2 - prepare
3 - attack
4 - wait
5 - death
*/

if instance_exists(obj_Player)
{
    if obj_Player.x > x image_xscale = -1 else image_xscale = 1;   
}

timer = 0;
state = 1;
attack = 0;
