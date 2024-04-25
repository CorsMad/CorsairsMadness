/// @description Insert description here
// You can write your code in this editor
//image_index = state;

if !instance_exists(obj_player) instance_destroy();

if instance_exists(obj_player_indicator){
	image_index = 1; 	
} else if point_in_circle(mouse_x,mouse_y,40,152,21) {
	image_index = 0;	
} else image_index = 2;
