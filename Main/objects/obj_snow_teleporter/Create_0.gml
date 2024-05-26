/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_skates_mask) instance_destroy(obj_skates_mask);

image_speed = 2;
dir = 0;
state = 0;
t =0;
spd = 4;

fnc_snd_play_onetime(snd_teleporter);