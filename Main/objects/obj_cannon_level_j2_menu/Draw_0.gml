/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(main_alpha);

draw_sprite(spr_cannon_level_menu,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
draw_sprite_ext(spr_cannon_level_menu,state+1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,alpha)
//draw_sprite(spr_cannon_level_menu,state+1,0,0);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center);
draw_set_color(c_white);

if global.language = 1 || global.language = 3 || global.language = 7{
    draw_text(camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+78 +2,text_l_g);    
    draw_text(camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+78 +2,text_r_g);    
    draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+161+2,text_b);  
} else {
    draw_text(camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+78,text_l_g);    
    draw_text(camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+78,text_r_g);    
    draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+161,text_b);
}

#region Секреты
if instance_exists(obj_cannon_level_j2){
    draw_sprite(spr_green_coin_choose,global.secrets_J2b_s1,camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+120);
    draw_sprite(spr_green_coin_choose,global.secrets_j2p_r4,camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+120);
}
if instance_exists(obj_cannon_level_d2){
    draw_sprite(spr_green_coin_choose,global.secrets_d2b_s1,camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+120);
    draw_sprite(spr_green_coin_choose,global.secrets_d2p_r4,camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+120);
}
if instance_exists(obj_cannon_level_s2){
    draw_sprite(spr_green_coin_choose,global.secrets_s2p_s ,camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+120);
    draw_sprite(spr_green_coin_choose,global.secrets_s2b_r5,camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+120);
}
if instance_exists(obj_cannon_level_g2){
    draw_sprite(spr_green_coin_choose,global.secrets_g2b_s ,camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+120);
    draw_sprite(spr_green_coin_choose,global.secrets_g2p_r6,camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+120);
}
if instance_exists(obj_cannon_level_l2){
    draw_sprite(spr_green_coin_choose,global.secrets_l2b_r5,camera_get_view_x(view_camera[0])+128,camera_get_view_y(view_camera[0])+120);
    draw_sprite(spr_green_coin_choose,global.secrets_l2p_s ,camera_get_view_x(view_camera[0])+352,camera_get_view_y(view_camera[0])+120);
}
#endregion


#region skip
	draw_set_alpha(alpha_skip);

	draw_set_halign(fa_center);
	draw_set_color(c_white)	
	
    switch(state){
        case 0:
            draw_sprite_ext(spr_skip_frame,0,camera_get_view_x(view_camera[0])+83,camera_get_view_y(view_camera[0])+56,1,1,0,c_white,alpha_skip);
	        draw_sprite_stretched_ext(spr_skip_line,0,camera_get_view_x(view_camera[0])+83+5,camera_get_view_y(view_camera[0])+56+5,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
            break;
        case 1:
            draw_sprite_ext(spr_skip_frame,0,camera_get_view_x(view_camera[0])+307,camera_get_view_y(view_camera[0])+56,1,1,0,c_white,alpha_skip);
	        draw_sprite_stretched_ext(spr_skip_line,0,camera_get_view_x(view_camera[0])+307+5,camera_get_view_y(view_camera[0])+56+5,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
            break;      
    }
    
#endregion



draw_set_alpha(1)