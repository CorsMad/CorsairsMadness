/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;


if !instance_exists(obj_player_boat_hitbox)
{
    instance_create_depth(x,y,depth,obj_player_boat_hitbox);
}
if !instance_exists(obj_player_boat_wave)
{
    instance_create_depth(x,y,depth,obj_player_boat_wave);
}


hp = 4; // 4 
b = 0; // выстрел
b_mid = 14; // кулдаун выстрелов
spd = 2;
spdv = 1.5; //верт скорость
xspdalgae = 1; // множитель скорости на водорослях
yspdalgae = 1;

money = global.gold;// Запись монет

rotat = 0;
yob = 0; // покачивание по y
toup = 1; // покачивание по y


col = c_white; // Цвет спрайта
alpha = 1; // alpha спрайта

//таймеры

t = 0;
t_mid = 14;
t_max = 28;
hit_cd = 0; // получение урона
ctsc_timer = 0 // катсцена
death_timer = 0;

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