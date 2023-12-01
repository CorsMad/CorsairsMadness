/// @description Insert description here
// You can write your code in this editor


draw_sprite_tiled(Sprite608,0, camera_get_view_x(view_camera[0]), 0);

shader_set(sh_jungle);
shader_set_uniform_f(uni_add,add);



draw_sprite_tiled(bgr_jungle1,0, camera_get_view_x(view_camera[0]) * 0.9 +offset1 , 0);
draw_sprite_tiled(Sprite607,0, camera_get_view_x(view_camera[0]) * 0.75 +offset2, 0);

shader_reset();