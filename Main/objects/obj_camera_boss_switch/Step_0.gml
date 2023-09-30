/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 0:
		if place_meeting(x,y,obj_Player){
			obj_camera_lastboss.state = 2;
			state = 1;
		}
		break;
	case 1:
		t++;
		if t = 50 {
			instance_destroy();
			instance_create_depth(240,-32,0,obj_bossmerch_phase3);
		}
		break;
}
