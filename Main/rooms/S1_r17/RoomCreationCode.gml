if instance_exists(obj_Player){
	if obj_Player.x > room_width/2 instance_create_depth(32,208,0,obj_silver_key_door3)	
}


if instance_exists(obj_maze5_counter_controller){
	if obj_maze5_counter_controller.prize1 = 1 obj_maze5_counter_controller.alarm[0] = 1;	
	if obj_maze5_counter_controller.prize2 = 1 obj_maze5_counter_controller.alarm[1] = 1;	
	if obj_maze5_counter_controller.prize3 = 1 obj_maze5_counter_controller.alarm[2] = 1;	
}

if !instance_exists(obj_maze5_counter_controller){
	instance_create_depth(112,88,0,obj_maze5_counter_controller)	
}