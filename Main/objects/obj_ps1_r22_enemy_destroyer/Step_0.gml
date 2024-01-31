/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player) {
	if instance_exists(obj_molded_purple_shield) obj_molded_purple_shield.enemy_hp = 0;
	if instance_exists(obj_molded_purple_archer) obj_molded_purple_archer.enemy_hp = 0;
	instance_destroy();
}








