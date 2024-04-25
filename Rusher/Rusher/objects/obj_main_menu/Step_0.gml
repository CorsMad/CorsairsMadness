/// @description Insert description here
// You can write your code in this editor


if canControl = 1 {
	
	switch(page){
		case 0:
			if point_in_rectangle(mouse_x,mouse_y,16,80,112,112) && mouse_check_button_pressed(mb_left) {
				canControl = 0;
				var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
				nlvl.rm = globalmap;
			}

			if point_in_rectangle(mouse_x,mouse_y,16,128,112,160) && mouse_check_button_pressed(mb_left) {		
				page = 1;
			}
			break;
		case 1:
			if point_in_rectangle(mouse_x,mouse_y,16,176,112,208) && mouse_check_button_pressed(mb_left) {		
				page = 0;
			}
		break;
	}
}
