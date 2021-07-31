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
*/
sprite_index = spr_molded_grounded_idle;
image_speed = 0;
state = 1;
hspd = 0.5;
vspd = 0;
attacks = 0;
t = 0;
enemy_hp = 4;
hit_cd = 0;

bl_t = 0;
hit_timer = 0;
combo_counter = 0;
combo_timer = 0;