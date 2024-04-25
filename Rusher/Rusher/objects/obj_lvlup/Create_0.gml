/// @description Insert description here
// You can write your code in this editor
// INCREASE

if obj_player_stats.current_stats.bar_range_normal        < 2 upgrade[0] = "bar_range_normal"                   else upgrade[0] = "z";
if obj_player_stats.current_stats.swing_range	          < 3 upgrade[1] = "swing_range"	                    else upgrade[1] = "z";
if obj_player_stats.current_stats.bar_range_crit          < 2 upgrade[2] = "bar_range_crit"                     else upgrade[2] = "z";
if obj_player_stats.current_stats.attack_speed	          < 3 upgrade[3] = "attack_speed"	                    else upgrade[3] = "z";
if obj_player_stats.current_stats.dmg			          < 3 upgrade[4] = "dmg"			                    else upgrade[4] = "z";
if obj_player_stats.current_stats.bar_range_elemental	  < 3 upgrade[5] = "element_rng"	                    else upgrade[5] = "z";
														 											        
// DECREASE												 											        
														 											        
if obj_player_stats.current_stats.bar_range_normal        > 0 upgrade[6] = "bar_range_normal_decrease"       else upgrade[6] = "z";
if obj_player_stats.current_stats.swing_range             > 0 upgrade[7] = "swing_range_decrease"            else upgrade[7] = "z";
if obj_player_stats.current_stats.attack_speed            > 0 upgrade[8] = "attack_speed_decrease"           else upgrade[8] = "z";

// EPIC

														     upgrade[9]  = "3_ice attack" 
														     upgrade[10] = "3_fire attack" 
														     upgrade[11] = "3_lightning attack" 
														     upgrade[12] = "3_wind attack" 

// LEGENDARY

if obj_player_stats.current_stats.bar_range_normal       < 2 upgrade[13] = "bar_range_normal_max"           else upgrade[13] = "z";
if obj_player_stats.current_stats.swing_range	         < 3 upgrade[14] = "swing_range_max"	            else upgrade[14] = "z";
if obj_player_stats.current_stats.bar_range_crit         < 2 upgrade[15] = "bar_range_crit_max"             else upgrade[15] = "z";
if obj_player_stats.current_stats.attack_speed	         < 3 upgrade[16] = "attack_speed_max"	            else upgrade[16] = "z";
if obj_player_stats.current_stats.dmg			         < 3 upgrade[17] = "dmg_max"			            else upgrade[17] = "z";
if obj_player_stats.current_stats.bar_range_elemental	 < 3 upgrade[18] = "element_dmg_max"	            else upgrade[18] = "z";

// ULTIMATE
															upgrade[19]  = "normal_ice attack" 
															upgrade[20] =  "normal_fire attack" 
															upgrade[21] =  "normal_lightning attack" 
															upgrade[22] =  "normal_wind attack" 


left = {
	name : "",	
	desc : "",	
	sprite : ""
}

middle = {
	name : "",	
	desc : "",	
	sprite : ""	
}

right = {
	name : "",	
	desc : "",	
	sprite : ""	
}

pos_start = 0;
pos_end =   6;


// формирование выбора из 3-х




//show_message(new_a_shuffeled);

t = 0;
