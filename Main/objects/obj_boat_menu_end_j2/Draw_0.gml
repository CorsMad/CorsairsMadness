/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha_main)

draw_sprite(spr_boat_menu_choose,0,0,0);
if canControl = 1 draw_sprite_ext(spr_boat_menu_choose,state+1,0,0,1,1,0,c_white,alpha)

//draw_sprite(spr_boat_menu_choose,state+1,0,0);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

draw_set_halign(fa_center);
draw_set_color(c_white);

if global.language = 1 {
    draw_text(128,94,text_l_g);
    draw_text(352,94,text_r_g);
} else {
    draw_text(128,92,text_l_g);
    draw_text(352,92,text_r_g);    
}


switch(current_room){
    case "J2_r9_boat": 
        draw_sprite(spr_green_coin_choose,global.secrets_J2b_s1,128,120);
        draw_sprite(spr_green_coin_choose,global.secrets_j2p_r4,352,120);
    break;       
    case "D2_r9_boat": 
        draw_sprite(spr_green_coin_choose,global.secrets_d2b_s1,128,120);
        draw_sprite(spr_green_coin_choose,global.secrets_d2p_r4,352,120);
    break;          
    case "S2_r8_boat": 
        draw_sprite(spr_green_coin_choose,global.secrets_s2p_s,128,120);
        draw_sprite(spr_green_coin_choose,global.secrets_s2b_r5,352,120);
    break;          
    case "G2_r9_boat": 
        draw_sprite(spr_green_coin_choose,global.secrets_g2b_s,128,120);
        draw_sprite(spr_green_coin_choose,global.secrets_g2p_r6,352,120);
    break;          
    case "L2_r8_boat": 
        draw_sprite(spr_green_coin_choose,global.secrets_l2b_r5,128,120);
        draw_sprite(spr_green_coin_choose,global.secrets_l2p_s,352,120);
    break;          
}


#region skip
	draw_set_alpha(alpha_skip);

	draw_set_halign(fa_center);
	draw_set_color(c_white)	
	
	//draw_set_halign(fa_left) 
    switch(state){
        case 0:
            draw_sprite_ext(spr_skip_frame,0,83,72,1,1,0,c_white,alpha_skip);
	        draw_sprite_stretched_ext(spr_skip_line,0,83+5,72+5,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
            break;
        case 1:
            draw_sprite_ext(spr_skip_frame,0,307,72,1,1,0,c_white,alpha_skip);
	        draw_sprite_stretched_ext(spr_skip_line,0,307+5,72+5,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
            break;      
    }
    
#endregion

draw_set_alpha(1);


