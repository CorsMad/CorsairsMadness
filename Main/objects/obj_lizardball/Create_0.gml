/// @description Insert description here
// You can write your code in this editor

/*
States

0 - ходьба (обнаружение)
1 - разворачивание
2 - сворачивание в клубок
3 - лежит свернутый
4 - Переворот на спину
5 - Переворот на ноги
6 - летит по диагонали
7 - катится по прямой
8 - стан
9 - после пружины

*/


state = 0;
hspd = 1;
vspd = 0;
t = 0; // общий таймер
hit_cd = 0;
enemy_hp = 4;
t_red = 0;
