/// @description Insert description here
// You can write your code in this editor

if state = 1 {
	if sprite_index = EnemyCreator.s_attack {
		sprite_index = EnemyCreator.s_idle;	
	}
}	

if state = 2 {
	if instance_exists(obj_enemy_spawner_parent){
		if obj_battle_info.player_xp>=obj_battle_info.player_xp_max {
			scr_lvlup();
		} else obj_enemy_spawner_parent.state+=0.5;	
	}
	instance_destroy();	
}