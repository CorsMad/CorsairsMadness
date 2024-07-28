/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(spr_globalmap_selector,onoff,x,y,-1,1,0,c_white,1);


if instance_exists(obj_global_map_controller){
	if position_meeting(mouse_x,mouse_y,self) {
		onoff = 1
		if mouse_check_button(mb_left) && obj_global_map_controller.move = 0 && obj_global_map_controller.x > -(obj_global_map_controller.image_number-1)*480  {
			obj_global_map_controller.move = 1;
			obj_global_map_controller.new_dest = obj_global_map_controller.x-480;
		} 
	} else onoff = 0;
}















