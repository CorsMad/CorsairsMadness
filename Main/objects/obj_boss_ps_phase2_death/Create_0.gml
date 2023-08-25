/// @description Insert description here
// You can write your code in this editor
t=0;
hspd = 0;
vspd = 0;
image_speed = 0;
image_index = 0;
fnc_snd_play_over(snd_follower_takedmg);
instance_create_depth(x,y-64,depth-1,obj_hp_full_gain_gift_mold);

if instance_exists(obj_follower_grounded_laser_vfx) instance_destroy(obj_follower_grounded_laser_vfx);
