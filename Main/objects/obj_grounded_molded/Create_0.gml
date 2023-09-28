/// @description Insert description here
// You can write your code in this editor

/*
        States

1 - Патрулирование и проверка
2 - Остановка при обнаружении
3 - Преследование игрока
4 - 2 Удара
5 - Удар с выпадом
6 - Отскок
7 - Ожидание после удара
8 - Получение урона на земле
9 - Получение урона в воздухе
10 - Состояние полета после получения усиленного удара
11 - Вставание
*/

sprite_index = spr_molded_grounded_idle;
image_speed = 0;
state = 1;
hspd = 0.5;
vspd = 0;
attacks = 0;
t = 0;
enemy_hp = 15//10; //15
hit_cd = 0;
hits_cd = 0;
bl_t = 0;
hit_timer = 0;
combo_counter = 0;
combo_timer = 0;
t_red = 0;

getKicked = 0; // 1 - обычный, 2 - выпад вперед, 3 - подброс, 4 - удар вниз
getBounced = 0;
delay = 0;
flip = 0;