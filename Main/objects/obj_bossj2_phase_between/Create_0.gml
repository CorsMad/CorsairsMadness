/// @description Insert description here
// You can write your code in this editor
fnc_snd_play_onetime(snd_boss2_appear);

image_speed = 0;
image_index = 3;

var w = instance_create_depth(x,y,depth+1,obj_boss2_wings);
w.fol = id;
w.image_speed = 1.5;

m = instance_create_depth(x,y,depth,obj_boss2j_death_mask);
m.fol = id;

var em = instance_create_depth(x,y,depth,obj_boss2j_enemy_mask);
em.fol_obj = id;