/// @description Insert description here
// You can write your code in this editor

level = 0 //0;


player_hp = 100;
player_hp_max = 100;
dmg = 4//random_range(4,6);
crit_dmg = 1.1;

el_dmg_fire  = 0;
el_dmg_ice   = 0;
el_dmg_light = 0;
el_dmg_wind  = 0;

el_dmg_fire_mp = 1.2;
el_dmg_ice_mp = 1.2;
el_dmg_light_mp = 1.2;
el_dmg_win_mp = 1.2;


dmg_output_miss    = 0;
dmg_output_normal  = 0;
dmg_output_crit    = 0;

el_count_fire = 0;
el_count_ice = 0;
el_count_light = 0;
el_count_wind = 0;

normal_change = 0; // 1 - Fire, 2 - ice, 3 - light, 4 - wind

current_stats = {
	bar_range_normal : 0,	
	swing_range : 0,
	bar_range_crit : 0,	
	attack_speed : 0,
	dmg : 0,			   
	bar_range_elemental : 0,	   			   
	element_fire : 0,			   
	element_wind : 0,			   
	element_ice : 0,			   
	element_lightning : 0,		   
}

