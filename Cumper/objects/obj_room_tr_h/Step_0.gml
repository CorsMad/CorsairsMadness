/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cube){
	room_goto(rm);	
	switch(side){
		case -1:
			obj_cube.x = obj_cube.x+1344-80;
			break;
		case 1:
			obj_cube.x = obj_cube.x-1344+80;
			break;
	}		
}