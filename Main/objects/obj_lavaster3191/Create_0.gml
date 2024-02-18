/// @description Insert description here
// You can write your code in this editor

/* states
0 - ожидание
1 - взлет и полет в игрока
2 - Отлет
*/
range = 200;
state = 0;
enemy_hp = 1;
hit_cd = 0;
t = 0;
heigh = y-135;
spd = 0;
boomer = 0;
vspd = 0;
hspd = 0;
dir = 0;
t_trace_part = 0;
//sprite_index = spr_lavaster_reveal;
image_speed = 0;
//image_index = 0;
/*
var tail = instance_create_depth(x,y,depth+1,obj_lavaster_part1)
tail.fol = id;