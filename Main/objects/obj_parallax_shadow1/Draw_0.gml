/// @description Insert description here
// You can write your code in this editor


draw_sprite_tiled(bgr_cemetery_sky,0, camera_get_view_x(view_camera[0]), 0);

shader_set(sh_jungle);
shader_set_uniform_f(uni_add,add1);
draw_sprite_tiled(bgr_cemetery_2,0, camera_get_view_x(view_camera[0]) * 0.9 + offset2, offsety2);
shader_reset();

shader_set(sh_jungle);
shader_set_uniform_f(uni_add,add2);
draw_sprite_tiled(bgr_cemetery_1,0, camera_get_view_x(view_camera[0]) * 0.75 + offset1, offsety1);
shader_reset();