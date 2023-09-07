/// @description Insert description here
// You can write your code in this editor
fnc_msc_stop_play_slow();
t = 0
image_speed = 0;
fnc_snd_play_onetime(snd_boss2_scream);

instance_destroy(obj_boss_l1_fire);
instance_destroy(obj_boss_l1_laserbeam);
instance_destroy(obj_boss_l1_laserbeam_aoe);
instance_destroy(obj_boss_l1_laserbeam_end);
instance_destroy(obj_boss_l1_laserbeam_start);