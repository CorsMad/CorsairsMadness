/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+64,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icons,2,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_halign(fa_center);
draw_text(89,18,eng4);
draw_text(199,18,eng3);

draw_set_color(c_grey);
draw_rectangle(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139,camera_get_view_y(view_camera[0])+33,1);   
draw_rectangle(camera_get_view_x(view_camera[0])+149,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249,camera_get_view_y(view_camera[0])+33,1);   


draw_set_color(c_red);
switch(select)
{
    case 0: 
        draw_rectangle(camera_get_view_x(view_camera[0])+38,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+140,camera_get_view_y(view_camera[0])+34,1);   
        draw_rectangle(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139,camera_get_view_y(view_camera[0])+33,1);           
        break;
    case 1: 
        draw_rectangle(camera_get_view_x(view_camera[0])+148,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+250,camera_get_view_y(view_camera[0])+34,1);   
        draw_rectangle(camera_get_view_x(view_camera[0])+149,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249,camera_get_view_y(view_camera[0])+33,1);           
        break;

}