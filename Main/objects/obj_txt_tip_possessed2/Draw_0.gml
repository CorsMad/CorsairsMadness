/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,-1);
draw_set_alpha(1)

draw_set_alpha(alpha);


//


draw_set_halign(fa_middle);
draw_set_color(c_white);

// 1
draw_text(room_width/2,16,text1);
draw_sprite_ext(spr_hud_superattack_border,0,room_width/2-57,52,1,1,0,c_white,alpha);
draw_sprite_stretched(spr_hud_superattack_power,0,room_width/2-57+6,52+4,64,7);
// 2
draw_text(room_width/2,80,text2);
draw_sprite(spr_combo_b,-1,room_width/2-14,   112+8)
draw_sprite(spr_combo_a,-1,room_width/2+14,   112+8)
draw_sprite(spr_combo_s,-1,room_width/2+28+14,112+8)
draw_sprite(spr_combo_c,-1,room_width/2-28-14,112+8)

// на земле слева
draw_text(room_width/2,144,text3);
draw_sprite(spr_icons_shop_pos,5,room_width/2-14,   176+10)
draw_sprite(spr_icons_shop_pos,6,room_width/2+14,   176+10)
draw_sprite(spr_icons_shop_pos,7,room_width/2+28+14,176+10)
draw_sprite(spr_icons_shop_pos,4,room_width/2-28-14,176+10)
// в воздухе справа
draw_text(room_width/2,208,text4);
