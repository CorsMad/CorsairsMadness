/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);          
draw_set_color(c_white);

draw_sprite_ext(spr_text_9slicesmall,0,text_x,text_y,7,1,0,c_white,alpha);
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_text_color(text_x,text_y-5,eng1,c_white,c_white,c_white,c_white,alpha)