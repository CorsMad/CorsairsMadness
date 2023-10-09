/// @description Insert description here
// You can write your code in this editor
player_input();

switch(state){
	case 0:
		t++;
		if t = 5 image_alpha = 0.25;
		if t = 10 image_alpha = 0.55;
		if t = 15 image_alpha = 0.75;
		if t = 20 {
			image_alpha = 1
			t = 0;
			state = 1;
			instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-999,obj_txt_tip_possessed_djump);
		}
		break;
	case 2:
		t++;
		switch(t){
			case 5:image_alpha = 0.75;break;
			case 10:image_alpha = 0.5;break;
			case 15:image_alpha = 0.25;break;
			case 20:
				obj_Player.isDead = 2.1;
				instance_destroy();
				break;
			
		}	
					
		break;
	
}




