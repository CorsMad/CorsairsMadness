/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_set_alpha(alpha);
draw_text(room_width/2,room_height/2+32,text);

//SKIP

if skip != 0
{
    draw_set_halign(fa_right);
    draw_set_font(fnt_pixel);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(448,238,skip_txt);
}