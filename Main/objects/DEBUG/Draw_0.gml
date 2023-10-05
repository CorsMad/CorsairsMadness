/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
    	
	
    if global.PlayerTransition != undefined
    {
		draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+80,string(global.PlayerTransition));
    }
   
	