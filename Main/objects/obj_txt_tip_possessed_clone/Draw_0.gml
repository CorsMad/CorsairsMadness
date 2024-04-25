/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);


draw_set_alpha(alpha);

draw_sprite_ext(spr_tip_clone1,-1,480-104-32,48,1,1,0,c_white,alpha);
draw_sprite_ext(spr_tip_clone2,-1,32,110,1,1,0,c_white,alpha);

draw_set_halign(fa_middle);
draw_set_color(c_aqua);

// 1
draw_text(room_width/2,16,text1);
//draw_text(room_width/2-48,16,text1);

// В СЕРЕДИНЕ
draw_set_color(c_yellow)
draw_text(room_width/2-48,48,text2);
draw_text(room_width/2-48,80,text3);

draw_set_halign(fa_left)
draw_set_color(c_white);
// на земле слева

draw_text(176,120,text4);

draw_set_halign(fa_middle);

draw_text(room_width/2,190,text5);

