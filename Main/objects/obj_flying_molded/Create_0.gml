/// @description Insert description here
// You can write your code in this editor
dir = image_xscale;
state = 1;
spd = 0;
hspd = 0;
vspd = 0;
t = 0;
hit_cd = 0;
enemy_hp = 6;
isAlive = 1;
combo_counter = 0;
combo_timer = 0;

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
