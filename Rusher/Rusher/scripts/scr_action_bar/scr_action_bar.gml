// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_action_bar_length(){
	switch(obj_player_stats.current_stats.bar_range_normal){
		case 0: 
			switch(obj_player_stats.current_stats.swing_range){
				case 0:	
					instance_create_depth(random_range(272,336),144,depth-4,obj_action_bar_white,{image_xscale : 4.5});
					break;
				case 1:
					instance_create_depth(random_range(240,308),144,depth-4,obj_action_bar_white,{image_xscale : 4.5});
					break;
				case 2:
					instance_create_depth(random_range(208,272),144,depth-4,obj_action_bar_white,{image_xscale : 4.5});
					break;
				case 3:
					instance_create_depth(random_range(170,240),144,depth-4,obj_action_bar_white,{image_xscale : 4.5});
					break;
			}
			break;
		case 1:
			switch(obj_player_stats.current_stats.swing_range){
				case 0:	
					instance_create_depth(random_range(272,336),144,depth-4,obj_action_bar_white,{image_xscale : 7.5});
					break;
				case 1:
					instance_create_depth(random_range(240,308),144,depth-4,obj_action_bar_white,{image_xscale : 7.5});
					break;
				case 2:
					instance_create_depth(random_range(208,272),144,depth-4,obj_action_bar_white,{image_xscale : 7.5});
					break;
				case 3:
					instance_create_depth(random_range(170,240),144,depth-4,obj_action_bar_white,{image_xscale : 7.5});
					break;
			}
			break;
		case 2:
			switch(obj_player_stats.current_stats.swing_range){
				case 0:	
					instance_create_depth(random_range(272,336),144,depth-4,obj_action_bar_white,{image_xscale : 10.5});
					break;
				case 1:
					instance_create_depth(random_range(240,308),144,depth-4,obj_action_bar_white,{image_xscale : 10.5});
					break;
				case 2:
					instance_create_depth(random_range(208,272),144,depth-4,obj_action_bar_white,{image_xscale : 10.5});
					break;
				case 3:
					instance_create_depth(random_range(170,240),144,depth-4,obj_action_bar_white,{image_xscale : 10.5});
					break;
			}
			break;
		}	
	}

function scr_action_bar_crit_element(){
	switch(image_xscale){
	case 4.5:
			// стихийный удар
			if obj_player_stats.current_stats.element_fire = 1 ||
			   obj_player_stats.current_stats.element_ice= 1 ||
			   obj_player_stats.current_stats.element_wind = 1 ||
			   obj_player_stats.current_stats.element_lightning = 1 
			   {
					switch(obj_player_stats.current_stats.bar_range_elemental){
						case 0:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 7.5});
							break;
						case 1:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 8.5});
							break;
						case 2:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 10});
							break;
						case 3:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 12});
							break;
					}
			   }
			// крит удар 
			switch(obj_player_stats.current_stats.bar_range_crit){
				case 0:
					instance_create_depth(x+4,y,depth-1,obj_action_bar_green,{image_xscale : 1.5})
					break;
				case 1:
					instance_create_depth(x+3,y,depth-1,obj_action_bar_green,{image_xscale : 2})
					break;
				case 2:
					instance_create_depth(x-3,y,depth-1,obj_action_bar_green,{image_xscale : 3})
					break;
			}
		break;
	case 7.5:
			// стихийный удар
			if obj_player_stats.current_stats.element_fire = 1 ||
			   obj_player_stats.current_stats.element_ice= 1 ||
			   obj_player_stats.current_stats.element_wind = 1 ||
			   obj_player_stats.current_stats.element_lightning = 1 
			   {
					switch(obj_player_stats.current_stats.bar_range_elemental){
						case 0:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 11});
							break;
						case 1:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 12.5});
							break;
						case 2:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 13.5});
							break;
						case 3:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 15});
							break;
					}
			   }
			// крит удар 
			switch(obj_player_stats.current_stats.bar_range_crit){
				case 0:
					instance_create_depth(x+6,y,depth-1,obj_action_bar_green,{image_xscale : 3})
					break;
				case 1:
					instance_create_depth(x+4,y,depth-1,obj_action_bar_green,{image_xscale : 4})
					break;
				case 2:
					instance_create_depth(x-4,y,depth-1,obj_action_bar_green,{image_xscale : 5.5})
					break;
			}
		break;
	case 10.5:
			// стихийный удар
			if obj_player_stats.current_stats.element_fire = 1 ||
			   obj_player_stats.current_stats.element_ice= 1 ||
			   obj_player_stats.current_stats.element_wind = 1 ||
			   obj_player_stats.current_stats.element_lightning = 1 
			   {
					switch(obj_player_stats.current_stats.bar_range_elemental){
						case 0:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 14.5});
							break;
						case 1:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 16});
							break;
						case 2:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 17});
							break;
						case 3:
							instance_create_depth(x,y,depth+1,obj_action_bar_element,{image_xscale : 19});
							break;
					}
			   }
			// крит удар 
			switch(obj_player_stats.current_stats.bar_range_crit){
				case 0:
					instance_create_depth(x+4,y,depth-1,obj_action_bar_green,{image_xscale : 4})
					break;
				case 1:
					instance_create_depth(x,y,depth-1,obj_action_bar_green,{image_xscale : 6})
					break;
				case 2:
					instance_create_depth(x-5,y,depth-1,obj_action_bar_green,{image_xscale : 8})
					break;
			}
		break;
	}
}