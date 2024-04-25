// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_creator(x_pos,y_pos,obj){
	t = 0;
	state+=0.5;
	var en = instance_create_depth(x_pos,y_pos,0,obj_enemy_parent);
	en.EnemyCreator = obj;
}

function scr_enemy_arrive_overall(x_pos,y_pos,spr_idle){
	x-=10;
	y=y_pos;
	sprite_index = spr_idle;
	if x <= x_pos {
		x = x_pos;
		y = y_pos;
		instance_create_depth(0,0,0,obj_player);
		instance_create_depth(0,0,0,obj_action_bar_player);
		state+=1;
	}	
}

function scr_enemy_action_overall(){
	
	if weak_crit_t>0  weak_crit_t-=1;
	if weak_crit_t<=0 weak_crit_t= 0;
	
	if weak_fire_t>0  weak_fire_t-=1;
	if weak_fire_t<=0 weak_fire_t= 0;

	if weak_ice_t>0  weak_ice_t-=1;
	if weak_ice_t<=0 weak_ice_t= 0;

	if weak_light_t>0  weak_light_t-=1;
	if weak_light_t<=0 weak_light_t= 0;

	if weak_wind_t> 0 weak_wind_t-=1;
	if weak_wind_t<=0 weak_wind_t= 0;


	obj_battle_info.enemy_hp = EnemyCreator.enemy_hp;
	obj_battle_info.enemy_hp_max = EnemyCreator.enemy_hp_max;
	obj_battle_info.enemy_attack = EnemyCreator.enemy_attack;
	obj_battle_info.enemy_attack_max = EnemyCreator.enemy_attack_max;
	obj_battle_info.enemy_name = EnemyCreator.en_name;
	if EnemyCreator.enemy_hp <= 0 {
		EnemyCreator.enemy_hp = 0;
		if (obj_battle_info.player_xp_max - obj_battle_info.player_xp) > EnemyCreator.exp_gain{
				obj_battle_info.player_xp += EnemyCreator.exp_gain;
		} else obj_battle_info.player_xp = obj_battle_info.player_xp_max;
		state+=1;	
		sprite_index = EnemyCreator.s_death;
		image_index = 0;
		obj_player_sprite.sprite_index = spr_player_idle;	
		//if obj_player_stats.player_hp > 0 obj_player_sprite.sprite_index = spr_player_idle;
		instance_destroy(obj_player_indicator);
		instance_destroy(obj_player_indicator_sparkle_big);
		instance_destroy(obj_player_indicator_sparkle_small);
		instance_destroy(obj_action_bar_player);
		instance_destroy(obj_player);
	}
}
	
function scr_enemy_attack(sprite_ind,enemy_dmg,slash_effect){
	EnemyCreator.enemy_attack -=EnemyCreator.enemy_attack_spd;
	if EnemyCreator.enemy_attack <=0 {
		if obj_player_stats.player_hp > 0 {
			obj_player_stats.player_hp -= enemy_dmg;		
			instance_create_depth(obj_player_sprite.x,obj_player_sprite.y+32,obj_player_sprite.depth-1,slash_effect) 
		}
		image_index = 0;
		sprite_index = sprite_ind;
		EnemyCreator.enemy_attack = EnemyCreator.enemy_attack_max	
	}
}
	
