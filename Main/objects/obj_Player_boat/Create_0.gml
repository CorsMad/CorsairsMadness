/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;

b = 0; // выстрел
b_mid = 14; // кулдаун выстрелов
spd = 2;
spdv = 1.5; //верт скорость
xspdalgae = 1; // множитель скорости на водорослях
yspdalgae = 1;


rotat = 0;
yob = 0; // покачивание по y
toup = 1; // покачивание по y



//таймеры

t = 0;
t_mid = 14;
t_max = 28;


// Чем стрелять
/*
0 - обычный пистоллет
1 - меньше кулдаун
2 - пушка
3 - пушка автомат
*/

state = 0; 

//bonus

bonus_gain_fast_pistol = 0;
bonus_gain_cannon = 0;

bonus_lose = 0;

bonus_cd = 0;
bonus_cd_max = 120;

fastshoot_count = 0;
cannonshoot_count = 0;