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
if global.language = 1 {
draw_text(84,18,"7");
} else draw_text(84,16,"7"); 
draw_sprite(spr_hud_secret,0,92,15);

if global.language = 1 {
draw_text(199,18,eng2);
} else draw_text(199,16,eng2);


draw_set_color(c_grey);
switch(select)
{
    case 0: 
        draw_sprite(spr_coin_choose,0,camera_get_view_x(view_camera[0])+84-21,camera_get_view_y(view_camera[0])+11)
        draw_rectangle(camera_get_view_x(view_camera[0])+148,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+250,camera_get_view_y(view_camera[0])+34,1);           
        break;
    case 1: 
        draw_sprite(spr_merch_choose,0,camera_get_view_x(view_camera[0])+149,camera_get_view_y(view_camera[0])+11);
        draw_rectangle(camera_get_view_x(view_camera[0])+84-21,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+84-24+62,camera_get_view_y(view_camera[0])+34,1);        
        break;
}