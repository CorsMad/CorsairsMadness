/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);

draw_set_alpha(alpha);

draw_sprite_ext(spr_tip_tp,-1,300,80,1,1,0,c_white,alpha);
draw_sprite_ext(spr_block_pos_tp_r,-1,60,200,1,1,0,c_white,alpha);
draw_sprite_ext(spr_block_pos_tp_u,-1,60,240,1,1,0,c_white,alpha);
draw_sprite_ext(spr_block_pos_tp_l,-1,100,200,1,1,0,c_white,alpha);
draw_sprite_ext(spr_block_pos_tp_d,-1,100,240,1,1,0,c_white,alpha);



draw_set_halign(fa_middle);
draw_set_color(c_white);

// 1
draw_text(room_width/2-72,16,text1);

// В СЕРЕДИНЕ
draw_set_color(c_yellow)
draw_text(room_width/2-72,48,text2);
draw_text(room_width/2-72,80,text3);
draw_text(room_width/2-72,112,text4);
draw_set_color(c_white);
draw_text(room_width/2,160,text5);

// на земле слева
draw_set_halign(fa_left);

// в воздухе справа

// на земле справа

draw_text(140,210,text6);
/*		  
// 3
draw_set_halign(fa_center);
draw_text(room_width/2,220,text6);