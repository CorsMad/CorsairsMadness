if can_start = 1{
	if mouse_check_button(mb_left) && point_in_circle(mouse_x,mouse_y,40,152,21){
		can_start = 0;
		obj_button_action.state = 1;
		obj_action_bar_player.move = 3;
		instance_create_depth(97,160,-20,obj_player_indicator);
		obj_player_sprite.sprite_index = spr_player_prepare1;
	}
}

if mouse_check_button_released(mb_left) && instance_exists(obj_player_indicator) {
	if obj_player_indicator.action = 0 obj_player_indicator.action = 1;	
	obj_button_action.state = 0;
}

