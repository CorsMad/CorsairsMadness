/// @description Insert description here
// You can write your code in this editor

/*
states 
0 - патрулирование
1 - спрятаться
2 - перемещение под землей
3 - показаться
4 - атака
5 - ожидание

*/

var mask = instance_create_depth(x,y,depth,obj_sander_mask);
mask.owner = id;

state = 0;
mov = 1
t = 0;
spd = 0.25;
hide = 0; // спрятался или нет
enemy_hp = 2;
hit_cd = 0;
