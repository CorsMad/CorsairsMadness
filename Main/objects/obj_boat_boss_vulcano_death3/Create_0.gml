/// @description Insert description here
// You can write your code in this editor
t = 0;
image_speed = 1;
state = 0;
t = 0;
t1 = 0;
phase = 0;


instance_destroy(obj_boat_boss_vulcano_proj_1_1);
instance_destroy(obj_boat_boss_vulcano_proj_1_2);
instance_destroy(obj_boat_boss_vulcano_proj_1_3);
instance_destroy(obj_boat_boss_vulcano_proj_2_1);
instance_destroy(obj_boat_boss_vulcano_proj_2_2);
instance_destroy(obj_boat_boss_vulcano_shadow);

if instance_exists(obj_boat_boss_vulcano_1_wall){
	obj_boat_boss_vulcano_1_wall.enemy_hp = 0;
}