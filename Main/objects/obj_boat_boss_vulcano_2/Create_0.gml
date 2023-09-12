/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_boat_boss_vulcano_1_wall){
instance_create_depth(352,96,0,obj_boat_boss_vulcano_1_wall)   ;
}
state = 0;
t = 0;
enemy_hp = 40;
enemy_hp_max = 40;
hit_cd = 0;
global.boatCheckpoint = 1;
wall = 0;