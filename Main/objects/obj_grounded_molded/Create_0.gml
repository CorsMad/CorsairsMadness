/// @description Insert description here
// You can write your code in this editor

/*
States

1 - патрулирование и проверка
2 - подготовка к бою
3 - назменая атака
4 - атака в прыжке
5 - отскок
6 - ожидание
7 - отражение атаки в воздухе
8 - смерть

*/

state = 1;
hspd = 1;
vspd = 0;
attacks = 0;
t = 0;
enemy_hp = 10;
hit_cd = 0;