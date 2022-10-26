/// @description Insert description here
// You can write your code in this editor

draw_rectangle_color(0,0,480,31,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icon_merchant,0,6,2);



draw_set_font(fnt_pixel_small);
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