/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - преследование+атака
2 - полет
*/

switch(state)
{
    case 0:
        y = lerp(y,obj_Player.y,0.1);
        x = lerp(x,camera_get_view_x(view_camera[0])+48,0.5)
        if abs(x - (camera_get_view_x(view_camera[0])+48)) < 1
        {
            state = 1;  
			
        }
        break;
    case 1:
        x = camera_get_view_x(view_camera[0])+48;
        y = lerp(y,obj_Player.y,0.1);
        t++;
		#region anim
		switch(t)
		{
			case 1:
				sprite_index = spr_boss_gp_fly;	
				image_speed = 1;
				image_index = 0;
				break;
			case 160:
				sprite_index = spr_boss_gp_phase1shot;
				image_index = 0;
				break;
			
			
		}
		
		#endregion
		
        if t = 200 
        {
            instance_create_depth(x+image_xscale*16,y-40,depth-1,obj_follower_grounded_laser_projectile);
            t = 0;
        }
		if t = 210 t = 0;
        if t < 150 && attack = 1
        {
            t = 0;
            state = 2;
        }
        break;
    case 2:
        t++;
		#region anim
		switch(t)
		{
			case 1:sprite_index = spr_boss_gp_fly;image_speed = 1;image_index = 0;break;
			case 50:sprite_index = spr_boss_gp_attack_forward;image_speed = 0;image_index = 0;break;
			case 55:image_index = 1;
			case 60:image_index = 2;
			case 65:image_index = 3;
		}
		#endregion
        x = camera_get_view_x(view_camera[0])+48;
        if t = 70
        {
			t = 0;
            state = 3;   
        }
        break;
    case 3:
		t++;
		if t = 2
		{
			t = 0;
			if image_index = 3 image_index = 4 else image_index = 3;
		}
		
        x+=hspd;
        if hspd < 6 hspd+=0.1;
        if  x > camera_get_view_x(view_camera[0])+480+64 
        {
            instance_destroy();   
        }
    
}




