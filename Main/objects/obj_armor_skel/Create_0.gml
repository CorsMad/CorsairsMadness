/// @description Insert description here
// You can write your code in this editor

/* states

0 - ожидание/патруль
1 - Преследование
2 - удар
3 - ожидание после удара
31 - возвращение обратно

4 - Переход в состояние без меча
5 - удары по земле

6 - переход в состояние без брони
7 - бегство

*/
start_x = x;
state = 0;
enemy_hp = 12;
hit_cd = 0;
t = 0;
t_attack = 0;
spd = 0;
mov = 0;
boomer = 0;
boom_timer = 0;