/// @description Insert description here
// You can write your code in this editor

shader_set(sh_logo_p);

shader_set_uniform_f(uni_add,add);

//draw_self();
if sprite = 0 draw_sprite_ext(spr_logo_pixel,im_index,room_width/2+offset_x,room_height/2+offset_y,scale,scale,0,c_white,alpha)
if sprite = 1 draw_sprite_ext(spr_logo_rstr,0,room_width/2,room_height/2+offset_y,scale2,scale2,0,c_white,alpha)
if state = 4 draw_sprite_ext(spr_logo_rstr_txt,0,room_width/2,room_height/2+offset_y,scale2,scale2,0,c_white,alpha_t)
shader_reset();