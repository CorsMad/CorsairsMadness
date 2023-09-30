/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
    	
	
    if instance_exists(obj_bossmerch_phase3)
    {
		draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+48,string(obj_bossmerch_phase3.place_rand));
		draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+63,string(obj_bossmerch_phase3.old_place));
		draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+80,string(obj_bossmerch_phase3.t));
    }
   
	