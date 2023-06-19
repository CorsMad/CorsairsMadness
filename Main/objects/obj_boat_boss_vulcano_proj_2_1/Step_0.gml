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
			vspd = 1;
			state = 2;
		}
		break;
	case 2:
		y+=vspd;
		if y >= dest_point {
			if orient = 0
			{
				// vert
				var p1 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p2 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p3 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p4 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);	
				p1.hspd = 0;
				p1.vspd = -1;
				p2.hspd = 0;
				p2.vspd = 1;
				p3.hspd = -2;
				p3.vspd = 0;
				p4.hspd = 2;
				p4.vspd = 0;
			} else 			
				// diag
				var p1 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p2 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p3 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
				var p4 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);	
				p1.hspd = 0;
				p1.vspd = -1;
				p2.hspd = 0;
				p2.vspd = 1;
				p3.hspd = -2;
				p3.vspd = 0;
				p4.hspd = 2;
				p4.vspd = 0;
			}						
			instance_destroy();	
		
		break;
}