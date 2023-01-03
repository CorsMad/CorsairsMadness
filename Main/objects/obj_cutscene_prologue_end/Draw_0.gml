/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(fnt_pixel);
draw_set_color(c_white);

if t > 100 draw_text(room_width/2,64,string(text1));
if t > 300 draw_text(room_width/2,80,string(text2));
if t > 500 draw_text(room_width/2,112,string(text3));
if t > 700 draw_text(room_width/2,128,string(text4));
if t > 900 draw_text(room_width/2,176,string(text5));


