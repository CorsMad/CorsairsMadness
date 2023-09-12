/// @description Insert description here
// You can write your code in this editor
global.boatCheckpoint = 2;
phase = 1;
state = 1;
t = 0//0;
hspd = 0;
vspd = choose(-2,2)//0;
t = 0;
t1 = 0;
ph2st = 0;
ph2st2 = irandom(5);
next_state = 3//2;

image_speed = 0;

var water = instance_create_depth(x,y,depth+1,obj_boat_boss_desert_water);
water.fol = id;

enemy_hp = 50;
enemy_hp_max = 50;
hit_cd = 0;