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
enemy_hp = 2;
var mask = instance_create_depth(x,y,depth,obj_sander_mask);
mask.owner = id;
mask.enemy_hp = enemy_hp;

state = 0;
mov = 1
t = 0;
spd = 0.25;
hide = 0; // спрятался или нет

t_red = 0;
hit_cd = 0;
