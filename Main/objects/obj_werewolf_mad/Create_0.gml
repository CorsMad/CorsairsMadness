/// @description Insert description here
// You can write your code in this editor

/*
states

0 - на месте
1 - преследует
2 - получение урона/отскок
3 - бешенство
*/

state = 1;
enemy_hp = 1;
hit_cd = 0;
t = 0;
hspd = choose(-2.5,2.5);
vspd = 0;
grounded = 0;
vulnerable = 1;
t_madness = 0;
madness = 0;