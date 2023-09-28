/// @description Insert description here
// You can write your code in this editor

t = 0;
state = 1;
vulnerable = 1;
appear = 0; // 0 left, 1 right
t_recover = 0;

hspd = 0;
vspd = 0;
hits_cd = 0;
hit_cd = 0;
hit_timer = 0;

overlap = 0;

image_speed = 0;

cloud_cr = instance_create_depth(x,y,depth-1,obj_molded_yellow_cloud_flying);
cloud_cr.obj_cr = id;
enemy_hp = 15;
t_red = 0;