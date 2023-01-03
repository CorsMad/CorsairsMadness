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
instance_create_depth(x,y,depth-1,obj_bossj2_phase2_mask);
var w = instance_create_depth(x,y,depth+1,obj_boss2_wings);
w.fol = id;
instance_create_depth(0,0,0,obj_b2_p2_reddot);

/*
////////////states
1. Вылетает справа сверху
2. ждет
3. Летит вниз Делает обстрел снарядами прямо.
4. Ждет
5. Летит вверх делает обстрел в игрока
6. Ждет и заново
7. Dizzy
8. Ожидание после dizzy
9. Быстрый полет вверх и 2
*/

var em = instance_create_depth(x,y,depth,obj_boss2j_enemy_mask);
em.fol_obj = id;