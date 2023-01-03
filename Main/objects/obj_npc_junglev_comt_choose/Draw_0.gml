/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+64,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icons,6,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(camera_get_view_x(view_camera[0])+40,camera_get_view_y(view_camera[0])+10,eng1);
draw_text(camera_get_view_x(view_camera[0])+160,camera_get_view_y(view_camera[0])+10,eng2);


switch(select)
{
    case 0: 
        draw_rectangle(camera_get_view_x(view_camera[0])+38,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+134,camera_get_view_y(view_camera[0])+20,1);   
        break;
    case 1: 
        draw_rectangle(camera_get_view_x(view_camera[0])+158,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+192,camera_get_view_y(view_camera[0])+20,1);   
        break;
}