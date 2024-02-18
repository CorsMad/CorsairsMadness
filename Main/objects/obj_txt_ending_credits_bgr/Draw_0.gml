/// @description Insert description here
// You can write your code in this editor
//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+80,c_black,c_black,c_black,c_black,false);    
    for(var kl = 0;kl < 500 ;kl += 8)
    {
        draw_sprite(spr_text_bord,0,camera_get_view_x(view_camera[0])+kl,camera_get_view_y(view_camera[0])+81);   
    }