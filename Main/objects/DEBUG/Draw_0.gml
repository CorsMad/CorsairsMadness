/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);

if instance_exists(obj_lizardball){
   draw_text(64,64,string(obj_lizardball.state));    
   draw_text(64,96,string(obj_lizardball.t));    
   draw_text(64,128,string(obj_lizardball.hspd));    
   draw_text(64,164,string(obj_lizardball.vspd));    
}



    /*	
	
    if instance_exists(obj_music_controller)
    {
        draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+80,string(obj_music_controller.stop_music));
        draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+96,string(obj_music_controller.t));
		//draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+96,string(obj_endurance_graveyard.t));
    }
   
	