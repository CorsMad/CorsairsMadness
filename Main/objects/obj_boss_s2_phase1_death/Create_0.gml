/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth-1,obj_hpmax_some_2mana_gain_gift);
state = 0;
t = -50;
hspd = 0;
vspd = 0;
image_speed = 0

image_blend = c_red;

enemy_hp = 15;
hit_cd = 0;
t_red = 0;

fnc_snd_play_onetime(snd_follower_getlight)