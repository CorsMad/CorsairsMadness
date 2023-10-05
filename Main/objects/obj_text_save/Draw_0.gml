/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);          
draw_set_color(c_white);

draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+400,camera_get_view_y(view_camera[0])+250,7,1,0,c_white,alpha);
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_text_color(camera_get_view_x(view_camera[0])+400,camera_get_view_y(view_camera[0])+250-5,eng1,c_white,c_white,c_white,c_white,alpha)