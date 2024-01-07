/// @description Insert description here
// You can write your code in this editor

shader_set(sh_logo_p);

shader_set_uniform_f(uni_add,add);

//draw_self();
draw_sprite_ext(spr_logo_pixel,im_index,room_width/2+offset_x,room_height/2+offset_y,scale,scale,1,c_white,alpha)

shader_reset();