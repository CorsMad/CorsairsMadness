/// @description Insert description here
// You can write your code in this editor
if image_alpha < 1
{
    image_alpha+=0.1;   
    switch(orient)
    {
        case 0:
            image_index = 1;
            break;
        case 1:
            image_index = 0;
            break;
    }
}
switch(state)
{
	case 0:		
		y+=vspd;
		if y < -32 {
			vspd = 0;			
			state = 1;
            //var shadow = instance_create_depth(x,dest_point,depth,obj_boat_boss_vulcano_shadow);
            //shadow.fol = id;
            if instance_exists(obj_Player_boat)
            {
                y=obj_Player_boat.y-272;
                x=obj_Player_boat.x;
            }
		}
		break;
	case 1:
		t++;
		if t = 10 {
			t = 0;
			dest_point = y+276;
			vspd = 2;
			state = 2;
            var shadow = instance_create_depth(x,dest_point,depth,obj_boat_boss_vulcano_shadow);
            shadow.fol = id;
		}
		break;
	case 2:
		y+=vspd;
		if y >= dest_point {
            instance_create_depth(x,y,depth-1,obj_sfx_explosion);
            instance_destroy();	
            switch(orient)
            {
                case 0:
                    var p1 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p2 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p3 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p4 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);	
    				p1.hspd = 0;
    				p1.vspd = -0.5;
    				p2.hspd = 0;
    				p2.vspd = 0.5;
    				p3.hspd = -1;
    				p3.vspd = 0;
    				p4.hspd = 1;
    				p4.vspd = 0;
                    break;
                case 1:
                    var p1 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p2 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p3 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);
    				var p4 = instance_create_depth(x,y,depth-1,obj_boat_boss_vulcano_proj_2_2);	
    				p1.hspd = -1;
    				p1.vspd = -0.5;
    				p2.hspd = 1;
    				p2.vspd = -0.5;
    				p3.hspd = -1;
    				p3.vspd = 0.5;
    				p4.hspd = 1;
    				p4.vspd = 0.5;
                    break;
            }	
        }
		break;
}