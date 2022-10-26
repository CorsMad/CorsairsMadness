/// @description Insert description here
// You can write your code in this editor
hspd = -1;
fspd = -1;
spd = 1;
vspd = 0;
t = 0;
hit_cd = 0;
enemy_hp = 1;


mask = instance_create_depth(x,y,depth,obj_crawling_molded_enemy_mask);
mask.inst = self;