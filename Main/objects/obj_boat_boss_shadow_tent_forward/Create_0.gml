/// @description Insert description here
// You can write your code in this editor
state = 0;
t = 0;
image_speed =0;
instance_create_depth(x,y+8,depth-1,obj_sfx_watersplash_boss);
var w = instance_create_depth(x,y,depth+1,obj_boat_boss_shadow_water);
w.fol = id;
fnc_snd_play_onetime(snd_vase_destruct);
acc = 0;