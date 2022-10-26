/// @description Insert description here
// You can write your code in this editor

draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+31,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icon_merchant,0,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+2);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(60,10,"talk");
draw_text(120,10,"trade");
draw_text(188,10,"exit");

switch(select)
{
    case 0: 
        draw_rectangle(58,10,90,20,1);   
        break;
    case 1: 
        draw_rectangle(118,10,158,20,1);   
        break;
    case 2: 
        draw_rectangle(186,10,217,20,1);    
        break;
}