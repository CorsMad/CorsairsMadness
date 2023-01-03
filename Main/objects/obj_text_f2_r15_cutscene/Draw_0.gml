/// @description Insert description here
// You can write your code in this editor
//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
scr_text_graphics();
draw_sprite(spr_text_icon_follower_grounded,0,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);



draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _len = string_length(text[0,text_current]);
if (char_current < _len)
    {
    char_current += char_speed;
    }
    
var _str = string_copy(text[0,text_current], 1, char_current);
draw_text(text_x, text_y,  _str);    