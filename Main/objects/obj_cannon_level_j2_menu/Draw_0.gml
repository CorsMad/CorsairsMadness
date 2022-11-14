/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_cannon_level_menu,0,0,0);
draw_sprite(spr_cannon_level_menu,state+1,0,0);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_pixel);

draw_text(136,72,text_l_g);
draw_text(136,112,text_l);

draw_text(344,72,text_r_g);
draw_text(344,112,text_r);

draw_text(240,160,text_b);