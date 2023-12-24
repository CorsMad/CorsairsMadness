/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_pause_controller) instance_destroy(obj_pause_controller);
fnc_msc_stop_play_slow();
t = 0
image_speed = 0;
fnc_snd_play_onetime(snd_boss2_scream);