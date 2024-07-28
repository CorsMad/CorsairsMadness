/// @description Insert description here
// You can write your code in this editor
spr_x = x;
if control = 1 {

// переход на другой уровень

	if move = 1 {
		x-=spd;
		if x <= new_dest {
			x = new_dest;	
			move = 0;
		}
	}	
	if move = -1 {
		x+=spd;
		if x >= new_dest {
			x = new_dest;	
			move = 0;
		}
	}	

}

//старт миссии
if move = 0{
	if control = 1 && point_in_rectangle(mouse_x,mouse_y,room_width/2-49,240-21,room_width/2+49,240+21) {
		but_spr = 1;
		if mouse_check_button_pressed(mb_left){			
			switch(x){
				case 0: 
					var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
					nlvl.rm = Lvl1;
					control = 0;
					break;
				case -480: 
					if obj_container_global.completed >= 1 {
						var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
						nlvl.rm = Lvl2;
						control = 0;
					}
					break;
				case -960:
					if obj_container_global.completed >= 2 {
						var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
						nlvl.rm = Lvl3;
						control = 0;
					}
					break;
				}
		}
	} else but_spr = 0;
} else but_spr = 0;





