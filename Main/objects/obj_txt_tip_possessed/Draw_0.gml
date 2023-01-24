/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);
draw_set_alpha(1)

draw_set_alpha(alpha);
draw_sprite(spr_demo_tip,0,0,0);

draw_sprite_ext(spr_player_masked_attack_finisher1,-1,188,136,0.6,0.6,0,c_white,alpha);
draw_sprite_ext(spr_player_masked_attack_finisher_forward,-1,188,184,0.6,0.6,0,c_white,alpha);
draw_sprite_ext(spr_player_masked_attack_finisher_down,-1,392,132,0.6,0.6,0,c_white,alpha);
draw_sprite_ext(spr_player_masked_attack_finisher_up,-1,388,184,0.6,0.6,0,c_white,alpha);


draw_set_halign(fa_middle);
draw_set_color(c_white);

// 1
draw_text(room_width/2,32,text1);

// 2
draw_text(room_width/2,72,text2);

// на земле слева
draw_text(room_width/4-16,176,textground);

// в воздухе справа
draw_text(room_width*3/4-64,124,textair);

// на земле справа
draw_text(room_width*3/4-64,176,textground);

// 3
draw_text(room_width/2,220,text3);