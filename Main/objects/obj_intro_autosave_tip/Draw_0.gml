/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha)
draw_set_halign(fa_center)
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel)

draw_text(room_width/2,room_height/2,text)
draw_sprite_ext(spr_icon_autosave,t_anim,room_width/2,room_height/2-16,1,1,0,c_white,alpha);