/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);
draw_set_alpha(1)

draw_set_alpha(alpha);

draw_sprite_ext(spr_tip_hook,-1,480-104-32,52,1,1,0,c_white,alpha);
draw_sprite_ext(spr_hook_block,-1,room_width/2,160,1,1,0,c_white,alpha);
draw_sprite_ext(spr_molded_crawling_run,-1,room_width/2-32,240,1,1,0,c_white,alpha);
draw_sprite_ext(spr_fastfly_molded_idle,-1,room_width/2+32,230,1,1,0,c_white,alpha);



draw_set_halign(fa_middle);
draw_set_color(c_white);

// 1
draw_text(room_width/2-48,16,text1);

// В СЕРЕДИНЕ
draw_set_color(c_yellow)
draw_text(room_width/2-48,52,text2);

draw_set_halign(fa_center)
draw_set_color(c_white);
// на земле слева

draw_text(room_width/2,96,text3);

draw_text(room_width/2,180,text4);

