/// @description Insert description here
// You can write your code in this editor

state = 1;
t = 0;
t_anim = 0;

hspd = 0;
vspd = 0;
spd = 4;
spd_p = 0;
plx = 0;
ply = 0;

hit = 0;
instance_create_depth(x,y,depth-1,obj_bossj2_phase3_mask);
var w = instance_create_depth(x,y,depth+1,obj_boss2_wings);
w.fol = id;
instance_create_depth(0,0,0,obj_b2_p3_greendot);

/*
////////////states
1. Вылетает справа
2. ждет
3. Полет вниз + стрельба по прямой
4. Ждет
5. Полет вверх + стрельба в игрока
6. ждет и 3
7. Подрыв от бомбы + DIZZY
8. Очухивание и полет вверх
*/

var em = instance_create_depth(x,y,depth,obj_boss2j_enemy_mask);
em.fol_obj = id;
