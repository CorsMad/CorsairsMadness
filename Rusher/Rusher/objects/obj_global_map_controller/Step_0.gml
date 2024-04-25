/// @description Insert description here
// You can write your code in this editor

if control = 1 {

// переход на другой уровень

	if position_meeting(mouse_x,mouse_y,obj_global_map_left) {
		if mouse_check_button_pressed(mb_left) && move = 0 && x < 0 {
			move = -1;
			new_dest = x+480;
		}
	}
	if position_meeting(mouse_x,mouse_y,obj_global_map_right) {
		if mouse_check_button_pressed(mb_left) && move = 0 && x < 0 {
			move = +1;
			new_dest = x-480;
		}
	}

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
	if control = 1 && point_in_circle(mouse_x,mouse_y,room_width/2,room_height/2,32) && mouse_check_button_pressed(mb_left){		
		switch(x){
			case 0: 
				var nlvl = instance_create_depth(0,0,depth-10000,obj_transition_bs_to_level);
				nlvl.rm = Lvl1;
				control = 0;
				break;
		}
	}
}

//инвентарь
if move = 0 && control = 1 {
	if point_in_rectangle(mouse_x,mouse_y,16,16,64,64) && mouse_check_button_pressed(mb_left) {
		control = 0;
		move = 0;
		instance_create_depth(0,0,depth-1,obj_inventory)
		instance_create_depth(0,0,depth-1,obj_player_equip)
	}
}