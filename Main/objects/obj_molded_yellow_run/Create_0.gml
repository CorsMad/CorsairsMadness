/// @description Insert description here
// You can write your code in this editor
state = 0;
hspd = 0;
vspd = 0;
fspd = 0;
flip = 0;
t = 0;
t_hit = 0;
hit_cd = 0;
t_recover = 0;
vulnerable = 1;
clouded = 0;
cloud_timer= 0;

get_bounced = 0;
get_kicked = 0;

cloud_cr = instance_create_depth(x,y,depth-1,obj_molded_yellow_cloud_running);
cloud_cr.obj_cr = id;

enemy_hp = 15;

t_red = 0;