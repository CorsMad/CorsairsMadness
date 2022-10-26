/// @description Insert description here
// You can write your code in this editor


/*Состояния
0 - идет влево вправо
1 - подготовка стрельбы
2 - стрельба
3 - потеря брони
4 - бег туда сюда
5 - смерть
*/


state = 0; // состояние
armored = 1; // бронированый
attack_cd = 0; // кд на атаку
jump_cd = 0; // кд на прыжки после потери брони
t = 0; // общий таймер
t_anim = 0; //таймер анимации

hspd = choose(-1,1);
vspd = 0;

enemy_hp = 2;
hit_cd = 0;