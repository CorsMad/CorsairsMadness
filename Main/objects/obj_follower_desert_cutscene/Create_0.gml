/// @description Insert description here
// You can write your code in this editor

fnc_snd_play_onetime(snd_desert_follower_tp);
state = 0;
t = 0;

image_speed = 0;
var mold = instance_create_depth(0,0,0,obj_boss_dp_mold_create);
mold.fol = id;