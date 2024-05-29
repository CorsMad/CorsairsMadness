/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_global_map_controller){
	if position_meeting(mouse_x,mouse_y,self) {
		if mouse_check_button(mb_left) && obj_global_map_controller.move = 0 && obj_global_map_controller.x < 0  {
			obj_global_map_controller.move = -1;
			obj_global_map_controller.new_dest = obj_global_map_controller.x+480;
		}
	}
}