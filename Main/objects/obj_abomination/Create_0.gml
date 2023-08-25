/// @description Insert description here
// You can write your code in this editor

/*
states

0 - на месте
1 - прыжки
2 - Отскок
3 - перерождение
4 - смерть

*/
air_hit = 0;

state = 0;
enemy_hp = 3;
hit_cd = 0;
t = 0;
hspd = 0;
vspd = 0;
grounded = 1;
larva_cr = 0;
flueted = 0;
t_flueted =0;
werewolf = choose(0,1); // превращение в оборпотная после смерти