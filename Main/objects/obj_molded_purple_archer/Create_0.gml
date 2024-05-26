/// @description Insert description here
// You can write your code in this editor
state = -1;
t = 0;
t_attack = 0;
flip = 0;
hspd = 0;
vspd = 0;
bounce = 0;

hits_cd = 0;
hit_cd = 0;
hit_stored = 0;

enemy_hp = 16;
t_red =0 ;

oleg = 0;

icon = instance_create_depth(x,y-64,depth,obj_molded_purple_archer_icon);
icon.fol = id;