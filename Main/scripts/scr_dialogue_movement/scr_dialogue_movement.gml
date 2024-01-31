// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_player_mov_desert_chief(argument0){
	if  instance_exists(obj_Player) {
		if abs(obj_Player.x - argument0.x) < 32 {
				obj_Player.key_left = 1
				}	else {
			obj_Player.image_xscale = 1;
			obj_Player.key_right = 1;
			argument0.talk_cr_t = 2;
		}	
	}
}

function fnc_player_mov_left(argument0){
	if  instance_exists(obj_Player) {
		if abs(obj_Player.x - argument0.x) < 24 {
				obj_Player.key_left = 1
				}	else {			
			obj_Player.key_left = 0;
			obj_Player.image_xscale = 1;
			argument0.talk_cr_t = 2;
		}	
	}
}

function fnc_player_mov_right(argument0){
	if  instance_exists(obj_Player) {
		if abs(obj_Player.x - argument0.x) < 24 {
				obj_Player.key_right = 1
				}	else {
			obj_Player.key_right = 0;
			obj_Player.image_xscale = -1;
			argument0.talk_cr_t = 2;
		}	
	}
}