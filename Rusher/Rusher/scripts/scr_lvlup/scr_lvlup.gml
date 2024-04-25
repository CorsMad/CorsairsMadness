// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lvlup(){
	
	switch(obj_player_stats.level){
		case 0:	
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 6;
			break;
		case 1:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 6;
			break;
		case 2:	
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 9;
			break;
		case 3:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 9;
			break;
		case 4:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 9;
			lvlup.pos_end = 13;
			break;
		case 5:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 9;
			break;
		case 6:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 13;
			lvlup.pos_end = 19;
			break;
		case 7:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 13;
			break;
		case 8:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 0;
			lvlup.pos_end = 13;
			break;
		case 9:
			var lvlup = instance_create_depth(0,0,-50,obj_lvlup);
			lvlup.pos_start = 19;
			lvlup.pos_end = 23;
			break;
	}	
}
	
function scr_lvlup_text(arra,argument0){
	switch(arra){
		case "bar_range_normal": 
			argument0.name = "NORMAL RANGE";
			argument0.desc = "attack bar increase";
			argument0.sprite = "spr_bar_sparkle_big";
			break;
		case "swing_range":
			argument0.name   = "SWING RANGE";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "bar_range_crit":
			argument0.name   = "CRIT RANGE";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "attack_speed":
			argument0.name   = "ATK SPD";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "dmg":
			argument0.name   = "DMG";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "element_rng":
			argument0.name   = "ELEMENT RNG";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "bar_range_normal_decrease":
			argument0.name   = "NORMAL RANGE DEC";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "swing_range_decrease" :
			argument0.name   = "SWING RANGE DEC";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "attack_speed_decrease" :
			argument0.name   = "ATK SPD DEC";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "3_ice attack" :
			argument0.name   = "3 ICE ATK";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "3_fire attack" :
			argument0.name   = "3 FIRE ATK";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "3_lightning attack" :
			argument0.name   = "3 LGHTN ATK";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "3_wind attack":
			argument0.name   = "3 WIND ATK";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "bar_range_normal_max" :
			argument0.name   = "NORMAL RANGE MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "swing_range_max":
			argument0.name   = "SWING RANGE MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "bar_range_crit_max":
			argument0.name   = "CRIT RANGE MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "attack_speed_max"	:
			argument0.name   = "ATK SPD MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "dmg_max"	:
			argument0.name   = "DMG MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "element_dmg_max":
			argument0.name   = "ELEMENT DMG MAX";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "normal_ice attack" :
			argument0.name   = "NORMAL ICE";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "normal_fire attack" :
			argument0.name   = "NORMAL FIRE";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "normal_lightning attack" :
			argument0.name   = "NORMAL LIGHT";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
		case "normal_wind attack" :
			argument0.name   = "NORMAL WIND";
			argument0.desc   = "NORMAL";
			argument0.sprite = "NORMAL";
			break;
	}
}

function scr_lvlup_action(argument0){
	switch(argument0) {
		case "NORMAL RANGE":
			obj_player_stats.current_stats.bar_range_normal +=1;
			break;
		case "SWING RANGE":
			obj_player_stats.current_stats.swing_range +=1;
			break;
		case "CRIT RANGE":
			obj_player_stats.current_stats.bar_range_crit +=1;
			break;
		case "ATK SPD":
			obj_player_stats.current_stats.attack_speed +=1;
			break;
		case "DMG":
			obj_player_stats.current_stats.dmg +=1;
			break;
		case "ELEMENT RNG":
			obj_player_stats.current_stats.bar_range_elemental+=1;
			break;
		case "NORMAL RANGE DEC":
			obj_player_stats.current_stats.bar_range_normal -=1;
			break;
		case "SWING RANGE DEC":
			obj_player_stats.current_stats.swing_range -=1;
			break;
		case "ATK SPD DEC":
			obj_player_stats.current_stats.attack_speed -=1;
			break;
		case "3 ICE ATK":
			obj_player_stats.el_count_ice = 3;
			break;
		case "3 FIRE ATK":	
			obj_player_stats.el_count_fire = 3;
			break;
		case "3 LGHTN ATK":
			obj_player_stats.el_count_light = 3;
			break;
		case "3 WIND ATK":
			obj_player_stats.el_count_wind = 3;
			break;
		case "NORMAL RANGE MAX":
			obj_player_stats.current_stats.bar_range_normal = 2;
			break;
		case "SWING RANGE MAX":
			obj_player_stats.current_stats.swing_range = 3;
			break;
		case "CRIT RANGE MAX":
			obj_player_stats.current_stats.bar_range_crit = 2;
			break;
		case "ATK SPD MAX":
			obj_player_stats.current_stats.attack_speed = 3;
			break;
		case "DMG MAX":
			obj_player_stats.current_stats.dmg = 3;
			break;
		case "ELEMENT DMG MAX":
			obj_player_stats.current_stats.bar_range_elemental = 3;
			break;
		case "NORMAL ICE":
			obj_player_stats.normal_change = 2;
			obj_player_stats.el_count_fire = 0
			obj_player_stats.el_count_ice = 0
			obj_player_stats.el_count_wind = 0
			obj_player_stats.el_count_light = 0
			break;
		case "NORMAL FIRE":
			obj_player_stats.normal_change = 1;
			obj_player_stats.el_count_fire = 0
			obj_player_stats.el_count_ice = 0
			obj_player_stats.el_count_wind = 0
			obj_player_stats.el_count_light = 0
			break;
		case "NORMAL LIGHT":
			obj_player_stats.normal_change = 3;
			obj_player_stats.el_count_fire = 0
			obj_player_stats.el_count_ice = 0
			obj_player_stats.el_count_wind = 0
			obj_player_stats.el_count_light = 0
			break;
		case "NORMAL WIND":
			obj_player_stats.normal_change = 4;
			obj_player_stats.el_count_fire = 0
			obj_player_stats.el_count_ice = 0
			obj_player_stats.el_count_wind = 0
			obj_player_stats.el_count_light = 0
			break;
	}
}





















