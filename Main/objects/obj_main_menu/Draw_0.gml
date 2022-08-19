/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(16,16 + gap*i, menu[submenu, i]);
}