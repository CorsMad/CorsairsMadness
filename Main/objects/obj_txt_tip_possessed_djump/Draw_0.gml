/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);
draw_set_alpha(1)

draw_set_alpha(alpha);

draw_sprite_ext(spr_doublejump_wings,-1,400,52,1,1,0,c_white,alpha);
draw_sprite_ext(spr_doublejump_block_frwrd,-1,38,120,1,1,0,c_white,alpha);
draw_sprite_ext(spr_doublejump_block_up,-1,38,180-16,1,1,0,c_white,alpha);
draw_sprite_ext(spr_doublejump_block_inf,-1,38,240-32,1,1,0,c_white,alpha);


draw_set_halign(fa_middle);
draw_set_color(c_white);

// 1
draw_text(room_width/2-64,16,text1);

// В СЕРЕДИНЕ
draw_set_color(c_yellow)
draw_text(room_width/2-64,52,text2);

draw_set_color(c_white);
// на земле слева
draw_set_halign(fa_left);
draw_text(64,120-8,text3);

// в воздухе справа
draw_text(64,180-8-16,text4);

// на земле справа
draw_text(64,240-13-32,text5);
/*
// 3
draw_set_halign(fa_center);
draw_text(room_width/2,220,text6);