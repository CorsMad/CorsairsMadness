/// @description Insert description here
// You can write your code in this editor
t = 0;
fnc_msc_stop_play_slow();
if instance_exists(obj_boat_boss_shadow_dtent){
	obj_boat_boss_shadow_dtent.death = 1;
}
if instance_exists(obj_boat_boss_shadow_utent){
	obj_boat_boss_shadow_utent.death = 1;
}
if instance_exists(obj_boat_boss_shadow_tent_forward3){
	instance_destroy(obj_boat_boss_shadow_tent_forward3)	
}

if instance_exists(obj_boat_boss_shadow_underwater_big_bubble){
	obj_boat_boss_shadow_underwater_big_bubble.enemy_hp = 0;
}

if instance_exists(obj_boat_boss_shadow_underwater_small_bubble){
	obj_boat_boss_shadow_underwater_small_bubble.enemy_hp = 0;	
}

if instance_exists(obj_boat_boss_shadow_underwater_tent3){
	instance_destroy(obj_boat_boss_shadow_underwater_tent3);	
}

instance_destroy(obj_boat_boss_shadow_underwater_big_bubble_create)
instance_destroy(obj_boat_boss_shadow_underwater_small_bubble_create)