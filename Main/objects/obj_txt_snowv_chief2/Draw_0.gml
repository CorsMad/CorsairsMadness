/// @description Insert description here
// You can write your code in this editor
//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
scr_text_graphics()
draw_sprite(spr_text_icons,6,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);

if typist.get_state() = 1 draw_sprite(spr_text_icon_button_k,iconspd,camera_get_view_x(view_camera[0])+480-12,camera_get_view_y(view_camera[0])+64-10)

var scribble_text = scribble(text)
scribble_text.draw(text_x,text_y,typist);
scribble_text.wrap(text_width);

switch(scr_t)
{
    case 0: text = eng1;break;                        
}

/*
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