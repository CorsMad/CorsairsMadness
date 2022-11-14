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
/*
////////////states
1. Вылетает справа
2. ждет
3. Делает обстрел навесными снарядами.
4. Ждет
5. Летит в игрока. После того как прилетел, 
ждет и отлетает в ближайшую сторону.
6. отдыхает
7. ждет
8. 3 и заново
*/

