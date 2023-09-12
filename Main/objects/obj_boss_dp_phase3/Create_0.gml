/// @description Insert description here
// You can write your code in this editor

t =0;
state = 0;

attackcount = 0;// колчество атак 1
place = 0; // появления атаки1 : 0 слева 1 справа
playerpoint_x = 0;//координаты игрока
playerpoint_y = 0;//координаты игрока

light_cd = 0;
can_hit_light = 0;

enemy_hp = 70;
enemy_hp_max = 70;
hit_cd = 0;
delay = 0;
var mold = instance_create_depth(0,0,0,obj_boss_dp_mold_create);
mold.fol =id;