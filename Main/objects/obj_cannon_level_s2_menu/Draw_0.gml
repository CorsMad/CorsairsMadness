/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(main_alpha);

draw_sprite(spr_cannon_level_menu,0,896-480,0);
draw_sprite_ext(spr_cannon_level_menu,state+1,896-480,0,1,1,0,c_white,alpha);
//draw_sprite(spr_cannon_level_menu,state+1,896-480,0);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(128+896-480,78,text_l_g);
//draw_text(128+896-480,108,text_r);

draw_text(352+896-480,78,text_r_g);
//draw_text(352+896-480,108,text_l);

draw_text(240+896-480,161,text_b);

draw_sprite(spr_green_coin_choose,global.secrets_s2p_s ,896-480+128,120);
draw_sprite(spr_green_coin_choose,global.secrets_s2b_r5,896-480+352,120);

draw_set_alpha(1)