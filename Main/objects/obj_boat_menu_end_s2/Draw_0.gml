/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_boat_menu_choose,0,0,0);
draw_sprite(spr_boat_menu_choose,state+1,0,0);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(128,80,text_l_g);
draw_text(128,108,text_r);

draw_text(352,80,text_r_g);
draw_text(352,108,text_l);


