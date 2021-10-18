/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;

b = 0; // выстрел
b_mid = 14; // кулдаун выстрелов
spd = 2;
spdv = 1.5; //верт скорость
rotat = 0;
yob = 0; // покачивание по y
toup = 1; // покачивание по y

// Чем стрелять
/*
0 - обычный пистоллет
1 - меньше кулдаун
2 - пушка
3 - пушка автомат
*/

state = 0; 

//bonus


bonus_cd = 0;
bonus_cd_max = 120;