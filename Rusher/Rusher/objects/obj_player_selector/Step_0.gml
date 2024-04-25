/// @description Insert description here
// You can write your code in this editor

if point_in_rectangle(mouse_x,mouse_y,x1,y1,x1+wide,y1+wide) && mouse_check_button_pressed(mb_left){
	for (var i = 0; i < 4; i++) {
	    if i = 0 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_fire = 1;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_wind = 0;
	obj_player_stats.current_stats.element_lightning = 0;
}

if point_in_rectangle(mouse_x,mouse_y,x2,y2,x2+wide,y2+wide) && mouse_check_button_pressed(mb_left){
	for (var i = 0; i < 4; i++) {
	    if i = 1 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_ice = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_lightning = 0;
	obj_player_stats.current_stats.element_wind = 0;
}

if point_in_rectangle(mouse_x,mouse_y,x3,y3,x3+wide,y3+wide) && mouse_check_button_pressed(mb_left){
	for (var i = 0; i < 4; i++) {
	    if i = 2 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_lightning = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_wind = 0;
}

if point_in_rectangle(mouse_x,mouse_y,x4,y4,x4+wide,y4+wide) && mouse_check_button_pressed(mb_left){
	for (var i = 0; i < 4; i++) {
	    if i = 3 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_wind = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_lightning = 0;
}



/*
if keyboard_check(ord("1")) {
	for (var i = 0; i < 4; i++) {
	    if i = 0 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_fire = 1;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_wind = 0;
	obj_player_stats.current_stats.element_lightning = 0;
}
if keyboard_check(ord("2")) {
	for (var i = 0; i < 4; i++) {
	    if i = 1 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_ice = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_lightning = 0;
	obj_player_stats.current_stats.element_wind = 0;
}
if keyboard_check(ord("3")) {
	for (var i = 0; i < 4; i++) {
	    if i = 2 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_lightning = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_wind = 0;
}
if keyboard_check(ord("4")) {
	for (var i = 0; i < 4; i++) {
	    if i = 3 effect_sellect[i] = 1 else effect_sellect[i] = 0;
	}	
	obj_player_stats.current_stats.element_wind = 1;
	obj_player_stats.current_stats.element_fire = 0;
	obj_player_stats.current_stats.element_ice = 0;
	obj_player_stats.current_stats.element_lightning = 0;
}
