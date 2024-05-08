/// @description Insert description here
// You can write your code in this editor
//normal_change = 0;
//dmg = random_range(4,6);


obj_battle_info.player_hp = player_hp;
obj_battle_info.player_hp_max = player_hp_max;


dmg_output_miss   = dmg*0.1;
dmg_output_normal = dmg;
dmg_output_crit   = dmg*crit_dmg;
dmg_output_fire   = dmg*el_fire;
dmg_output_ice    = dmg*el_ice;
dmg_output_light  = dmg*el_light;
dmg_output_wind   = dmg*el_wind;

if player_hp <=0 {
	player_hp = 0;
	instance_destroy(obj_player_indicator);
	instance_destroy(obj_player_indicator_sparkle_big);
	instance_destroy(obj_player_indicator_sparkle_small);
	instance_destroy(obj_action_bar_player);
	instance_destroy(obj_player_selector);
	instance_destroy(obj_player);
	if obj_player_sprite.state < 2 {
		
		obj_player_sprite.state = 2;		
		obj_player_sprite.sprite_index = spr_player_death;
		obj_player_sprite.image_index = 0;
	}
}