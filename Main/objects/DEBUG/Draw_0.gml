/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);

if instance_exists(obj_ending){
   draw_text(240,64, string(obj_ending.state));    
   draw_text(240,96, string(obj_ending.t));    
   draw_text(240,128,string(obj_ending.ending));    
   draw_text(240,164,string(obj_ending.end_start));    
   draw_text(240,192,string(obj_ending.step));    
}


    /*	
	
    if instance_exists(obj_music_controller)
    {
        draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+80,string(obj_music_controller.stop_music));
        draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+96,string(obj_music_controller.t));
		//draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+96,string(obj_endurance_graveyard.t));
    }
   
	