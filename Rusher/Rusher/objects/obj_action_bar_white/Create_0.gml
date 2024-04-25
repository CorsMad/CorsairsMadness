/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;

scr_action_bar_crit_element();

//1fire 2ice 3light 4wind

if instance_exists(obj_player_stats) {
	normal_change = obj_player_stats.normal_change;
	switch(obj_player_stats.normal_change){
		case 0:
			#region  normal
			
			if obj_player_stats.el_count_fire > 0 {
				type_dmg = 1		
			sprite_index = spr_action_bar_fire;
			} else
			if obj_player_stats.el_count_ice > 0 {
				type_dmg = 2	
				sprite_index = spr_action_bar_ice;
			} else
			if obj_player_stats.el_count_light > 0 {
				type_dmg = 3	
				sprite_index = spr_action_bar_lightning;
			} else
			if obj_player_stats.el_count_wind > 0 {
				type_dmg = 4		
				sprite_index = spr_action_bar_wind;
			} else {
				type_dmg = 0;
				sprite_index = spr_action_bar_hit_normal;	
			}	
			#endregion
			break;
		case 1: // fire
			sprite_index = spr_action_bar_fire;
			break;
		case 2: //ice
			sprite_index = spr_action_bar_ice;
			break;
		case 3: //light
			sprite_index = spr_action_bar_lightning;
			break;
		case 4: //wind
			sprite_index = spr_action_bar_wind;
			break;
	}
}
