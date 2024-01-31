/// @description Insert description here
// You can write your code in this editor
state = 0;
t = 0;
image_speed = 0;
image_index = 2;
instance_create_depth(x,y,depth-1,obj_hpmax_some_2mana_gain_gift);
depth = -100;
image_blend = c_red;

fnc_msc_stop_play_slow()
if instance_exists(obj_pause_controller) instance_destroy(obj_pause_controller);