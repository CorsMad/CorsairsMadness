/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);


draw_set_alpha(alpha);

draw_sprite_ext(spr_player_masked_superdash,-1,480-54,80,-1,1,0,c_white,alpha);
draw_sprite_ext(spr_superdash_stream3,-1,      480-54,80,-1,1,0,c_white,alpha);
draw_sprite_ext(spr_player_masked_presuperdash3,-1,64,144,1,1,0,c_white,alpha);
draw_sprite_ext(spr_superdash_vfx_3,-1,64,144,1,1,0,c_white,alpha);

draw_sprite_ext(spr_block_superdash_destr,-1,350,190,1,1,0,c_white,alpha);
draw_sprite_ext(spr_block_superdash_up,-1,410,190,1,1,0,c_white,alpha);




draw_set_halign(fa_middle);
draw_set_color(c_aqua);

// 1
draw_text(room_width/2-48,16,text1);

// В СЕРЕДИНЕ
draw_set_color(c_yellow)
draw_text(room_width/2-50,40,text2);
draw_text(room_width/2-50,70,text4);

draw_set_halign(fa_left)
draw_set_color(c_white);
draw_text(96,120,text3);

draw_set_halign(fa_center)
draw_set_color(c_white);
// на земле слева


draw_text(room_width/2,230,text6);

draw_set_halign(fa_left)
draw_set_color(c_white);
draw_text(24,180,text5);



