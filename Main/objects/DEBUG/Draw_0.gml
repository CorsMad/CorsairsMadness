/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_black);
    
    if instance_exists(obj_follower_desert_cutscene)
    {
    draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+48,string(obj_follower_desert_cutscene.state));
    draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+64,string(obj_follower_desert_cutscene.t));
    }
   
	