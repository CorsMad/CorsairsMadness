/// @description Insert description here
// You can write your code in this editor

/*
states

1. Патрулирование
2. Ожидание после встречи с игроком
3. Преследование
4. После столкновением с игроком
5. Остановка и ожидание
6. Смерть

*/
spd = 0;
state = 1;
t = 0;
enemy_hp = 1;
hit_cd = 0;
image_speed = 0;


mask = instance_create_depth(x,y,depth-1,obj_fastfly_molded_enemy_mask);
mask.inst = self;