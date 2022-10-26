/// @description Insert description here
// You can write your code in this editor
dir = image_xscale;
state = 1;

stl = 1;
str = 0;
stst = 0;

spd = 0;
hspd = 0;
vspd = 0;
t = 0;
hit_cd = 0;
enemy_hp = 15;
isAlive = 1;
combo_counter = 0;
combo_timer = 0;
t_red = 0;

getKicked = 0; // 1 - обычный, 2 - выпад вперед, 3 - подброс, 4 - удар вниз
getBounced = 0;
delay = 0;
flip = 0;
isCrossing = 0;
sprite_index = spr_molded_flying_patrol;
/*

Состояния

1 - Патруль
2 - Стоп
3 - Подготовка к атаке
4 - Полет в игрока
5 - Подлет после столкновения с игроком 
6 - Ожидание
7 - Полет вверх после атаки
8 - Полет вниз после атаки
9 - Получение урона и отлет назад
10 - Состояние полета после получения усиленного удара
11 - вставание
