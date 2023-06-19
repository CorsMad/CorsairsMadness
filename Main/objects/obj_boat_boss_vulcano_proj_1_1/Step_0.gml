/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case 0:		
		y+=vspd;
		if y < -32 {
			vspd = 0;			
			state = 1;
		}
		break;
	case 1:
		t++;
		if t = 100 {
			t = 0;
			dest_point = y+272;
			vspd = 4;
			state = 2;
		}
		break;
	case 2:
		y+=vspd;
		if y >= dest_point {
			instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_1_1_expl);
			instance_destroy();	
		}
		break;
}