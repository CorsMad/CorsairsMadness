/// @description Insert description here
// You can write your code in this editor

draw_self();
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_halign(fa_center)
draw_set_color(c_white);
if Working = 1 {
	draw_text(245,208,menu[0,4])
}
