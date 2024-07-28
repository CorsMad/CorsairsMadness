/// @description Insert description here
// You can write your code in this editor
var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])
var cam_x_m = camera_get_view_x(view_camera[0])+240;
var cam_y_m = camera_get_view_y(view_camera[0])+135;



#region Отриосвка черн

draw_set_colour(c_black);

draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+270,-91);

//draw_sprite_ext(Sprite1682,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,1);

draw_set_alpha(1);

#endregion

#region Отрисовка текстов
draw_set_color(c_white);
draw_set_halign(fa_center);
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
if submenu = 10 draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64,confirm1); 
if submenu = 11 draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64,confirm2); 
var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    //text_col = c_white;
    if i == index 
    {
        draw_set_color(c_red);
        //text_col = c_red
    }
    
    if submenu = 32
    {
       draw_sprite(spr_options_gamepad,0,camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+135-35);    
    }
    
    if submenu = 31
    {
        draw_set_halign(fa_left)   
    } else draw_set_halign(fa_center);
    
    if submenu = 31
    {
        draw_text(camera_get_view_x(view_camera[0])+120,camera_get_view_y(view_camera[0])+32+gap*i, menu[submenu, i])   
        //text_drop_shadow(camera_get_view_x(view_camera[0])+120,camera_get_view_y(view_camera[0])+32+gap*i,text_col,c_black,menu[submenu, i],1,1);
    } else if submenu = 32{
		draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+180 + gap*i, menu[submenu, i]);	
	} else if submenu = 41
    {
        draw_set_font(fnt_pixel);
        //text_drop_shadow(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+32+gap*i,text_col,c_black,menu[submenu, i],1,1);
        draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+32 + gap*i, menu[submenu, i]);   
    } else if submenu = 333{ 
		draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+16+gap*i, menu[submenu, i])
        //text_drop_shadow(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64+gap*i,text_col,c_black,menu[submenu, i],1,1);
	} else {draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64+gap*i, menu[submenu, i]);
        
    }
    
    
}

#endregion

#region Отрисовка геймпада
if submenu = 32
{
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    //draw_text(camera_get_view_x(view_camera[0])+240+36,camera_get_view_y(view_camera[0])+59,menu[31, 7]);
    //draw_text(camera_get_view_x(view_camera[0])+240+36,camera_get_view_y(view_camera[0])+75,menu[31, 6]);
    //draw_text(camera_get_view_x(view_camera[0])+240+36,camera_get_view_y(view_camera[0])+91,menu[31, 4]);
    //draw_text(camera_get_view_x(view_camera[0])+240+36,camera_get_view_y(view_camera[0])+107,menu[31, 5]);
	
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+16+16,menu[31, 7]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+32+16,menu[31, 9]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+48+16,menu[31, 6]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+64+16,menu[31, 8]);
	
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+80 +16,menu[31, 7]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+96 +16,menu[31, 6]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+112+16,menu[31, 4]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+128+16,menu[31, 5]);
}
#endregion

draw_set_halign(fa_center);

#region Language
if submenu = 41
{
    switch(global.language)
    {
        case 0:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 1:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 2:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 3:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 4:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 5:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 6:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 7:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 8:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 9:     draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 10:    draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;
        case 11:    draw_line_color(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+global.language*16+44,camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+global.language*16+44,c_white,c_white);   break;    
    }    
}
#endregion

#region отрисовка ползунков музыки и эффектов

if submenu = 4
{
    draw_sprite(spr_slider_vfx_music,0,camera_get_view_x(view_camera[0])+144,camera_get_view_y(view_camera[0])+86.5);
    draw_sprite(spr_slider_vfx_music,0,camera_get_view_x(view_camera[0])+144,camera_get_view_y(view_camera[0])+130.5);
    
    if index = 0 draw_sprite(spr_slider_vfx_music_selector,1,camera_get_view_x(view_camera[0])+(160+16*(global.MSCvolume*10)),camera_get_view_y(view_camera[0])+86.5); else draw_sprite(spr_slider_vfx_music_selector,0,camera_get_view_x(view_camera[0])+(160+16*(global.MSCvolume*10)),camera_get_view_y(view_camera[0])+86.5); 
    if index = 1 draw_sprite(spr_slider_vfx_music_selector,1,camera_get_view_x(view_camera[0])+(160+16*(global.SFXvolume*10)),camera_get_view_y(view_camera[0])+130.5); else draw_sprite(spr_slider_vfx_music_selector,0,camera_get_view_x(view_camera[0])+(160+16*(global.SFXvolume*10)),camera_get_view_y(view_camera[0])+130.5); 
    

}

#endregion

#region отрисовка текстов в меню управления

if submenu = 31
{
    for (var k = 0; k < 10; ++k) {
        if submenu = 31 && KBControlChange = 1
        {
            if index == k draw_line_color(camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+(44+16*k),camera_get_view_x(view_camera[0])+320,camera_get_view_y(view_camera[0])+(44+16*k),c_red,c_red) else draw_line_color(camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+(44+16*k),camera_get_view_x(view_camera[0])+320,camera_get_view_y(view_camera[0])+(44+16*k),c_white,c_white)          
        }   else draw_line_color(camera_get_view_x(view_camera[0])+280,camera_get_view_y(view_camera[0])+(44+16*k),camera_get_view_x(view_camera[0])+320,camera_get_view_y(view_camera[0])+(44+16*k),c_white,c_white)         
    }
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);

    if (index = 0 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*0),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*0),string(pk_up),c_white,c_white,c_white,c_white,1);
    if (index = 1 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*1),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*1),string(pk_down),c_white,c_white,c_white,c_white,1);
    if (index = 2 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*2),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*2),string(pk_left),c_white,c_white,c_white,c_white,1);
    if (index = 3 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*3),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*3),string(pk_right),c_white,c_white,c_white,c_white,1);
    if (index = 4 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*4),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*4),string(pk_jump),c_white,c_white,c_white,c_white,1);
    if (index = 5 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*5),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*5),string(pk_attack),c_white,c_white,c_white,c_white,1);
    if (index = 6 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*6),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*6),string(pk_dash),c_white,c_white,c_white,c_white,1);
    if (index = 7 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*7),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*7),string(pk_use_item),c_white,c_white,c_white,c_white,1);
    if (index = 8 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*8),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*8),string(pk_use_abil),c_white,c_white,c_white,c_white,1);
    if (index = 9 && KBControlChange = 1) draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*9),"<...>",c_red,c_red,c_red,c_red,1); else draw_text_color(camera_get_view_x(view_camera[0])+300,camera_get_view_y(view_camera[0])+(32+16*9),string(pk_weapon_select),c_white,c_white,c_white,c_white,1);
}


#region название клавиш

#endregion

#endregion


#region Отрисовка POS TIP

var movepos = key_right_press-key_left_press;
if movepos!=0 {pos_index+=movepos;fnc_snd_play_onetime(snd_menu_select)}
if pos_index<0 pos_index=pos_index_max;
if pos_index>pos_index_max pos_index=0;
if submenu = 333{
	draw_sprite_ext(spr_tip_arrow,-1,cam_x+428,cam_y+22,1,1,0,c_white,1);
	draw_sprite_ext(spr_tip_arrow,-1,cam_x+372,cam_y+22,-1,1,0,c_white,1);
	draw_set_color(c_yellow)
	draw_text(cam_x+400,cam_y+16,+string(pos_index+1) +"/" + string(pos_index_max+1));
	
switch(pos_index) {
	case 0:
		#region 1
		draw_set_alpha(1)
		if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
		draw_set_color(c_black)
		//draw_rectangle(0,0,room_width,room_height,-1);		
		draw_set_alpha(1);
		draw_sprite(spr_demo_tip_pause,0,cam_x+0,cam_y+24);
		fnc_lng_tip_possessed();
		
		draw_sprite_ext(spr_player_masked_attack_finisher1,-1,       cam_x+188,cam_y+136+24,0.6,0.6,0,c_white,1);
		draw_sprite_ext(spr_player_masked_attack_finisher_forward,-1,cam_x+188,cam_y+184+24,0.6,0.6,0,c_white,1);
		draw_sprite_ext(spr_player_masked_attack_finisher_down,-1,   cam_x+392,cam_y+132+24,0.6,0.6,0,c_white,1);
		draw_sprite_ext(spr_player_masked_attack_finisher_up,-1,     cam_x+388,cam_y+184+24,0.6,0.6,0,c_white,1);


		draw_set_halign(fa_middle);
		draw_set_color(c_white);

		// 1
		draw_text(cam_x_m,cam_y+48,text1);

		// 2
		draw_text(cam_x_m,cam_y+80,text2);

		// на земле слева
		draw_text((cam_x+120)-16,cam_y+176+24,textground);

		// в воздухе справа
		draw_text(cam_x+360-64,cam_y+124+24,textair);

		// на земле справа
		draw_text(cam_x+360-64,cam_y+176+24,textground);

		// 3
		draw_text(cam_x_m,cam_y+228,text3);
		
		
		
		
		#endregion
		break;
	case 1:
		#region 2
		fnc_lng_tip_possessed2();
		draw_set_alpha(1)
		if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

		draw_set_halign(fa_middle);
		draw_set_color(c_white);

		// 1
		draw_text(cam_x_m,cam_y+48,text1);
		draw_sprite_ext(spr_hud_superattack_border,0,cam_x_m-57,cam_y+52+32,1,1,0,c_white,1);
		draw_sprite_stretched(spr_hud_superattack_power,0,cam_x_m-57+6,cam_y+52+4+32,64,7);
		// 2
		draw_text(cam_x_m,cam_y+80+32,text2);
		draw_sprite(spr_combo_b,-1,cam_x_m-14,   cam_y+112+8+32)
		draw_sprite(spr_combo_a,-1,cam_x_m+14,   cam_y+112+8+32)
		draw_sprite(spr_combo_s,-1,cam_x_m+28+14,cam_y+112+8+32)
		draw_sprite(spr_combo_c,-1,cam_x_m-28-14,cam_y+112+8+32)

		// на земле слева
		draw_text(cam_x_m,cam_y+144+32,text3);
		
		#region Спец приемы
		
		if global.superattack1 > 0{
			draw_sprite(spr_icons_shop_pos,4,cam_x+96, cam_y+220)	
		} else draw_sprite(spr_icons_shop_pos,0,cam_x+96, cam_y+220)
		
		if global.superattack1 = 2 {
			draw_sprite(spr_icons_shop_pos,5,cam_x+96, cam_y+250)	
		} else draw_sprite(spr_icons_shop_pos,1,cam_x+96, cam_y+250)
		
		if global.superattack2 = 1 {
			draw_sprite(spr_icons_shop_pos,6,cam_x+272,cam_y+220)	
		} else draw_sprite(spr_icons_shop_pos,2,cam_x+272,cam_y+220)
		
		if global.superattack3 = 1 {
			draw_sprite(spr_icons_shop_pos,7,cam_x+272,cam_y+250)	
		} else draw_sprite(spr_icons_shop_pos,3,cam_x+272,cam_y+250)
		
		//draw_sprite(spr_icons_shop_pos,4,cam_x+96, cam_y+220)
		//draw_sprite(spr_icons_shop_pos,5,cam_x+96, cam_y+250)
		//draw_sprite(spr_icons_shop_pos,6,cam_x+272,cam_y+220)
		//draw_sprite(spr_icons_shop_pos,7,cam_x+272,cam_y+250)
		
		#region Верхний левый
		
		if global.superattack1 > 0 {	
			draw_sprite(spr_gp_icon,6,cam_x+112,cam_y+220);                    
							draw_text(cam_x+134,cam_y+215,"/");
			draw_sprite(spr_gp_icon,7,cam_x+139,cam_y+220);                               
							draw_text(cam_x+164,cam_y+215,"+");
		
			switch(isKeyboard)
         {
             case 0:   
                 draw_sprite(spr_gp_icon,10,cam_x+170,cam_y+220);  
                 break;
             case 1: 
                 draw_sprite(spr_key_icon,scr_key_sprite_tip(global.abil_key),cam_x+170,cam_y+220); 
                 break;
         }
		}
		#endregion
		
		#region нижний левый
		if global.superattack1 = 2 {
			draw_sprite(spr_gp_icon,6,cam_x+112,cam_y+250);                    
							draw_text(cam_x+134,cam_y+245,"/");
			draw_sprite(spr_gp_icon,7,cam_x+139,cam_y+250);                               
							draw_text(cam_x+164,cam_y+245,"+");
		
			switch(isKeyboard)
	         {
	             case 0:   
	                 draw_sprite(spr_gp_icon,10,cam_x+170,cam_y+250);  
	                 break;
	             case 1: 
	                 draw_sprite(spr_key_icon,scr_key_sprite_tip(global.abil_key),cam_x+170,cam_y+250); 
	                 break;
	         }
		}
		#endregion
		
		#region верхний правый
		if global.superattack2 = 1{
			draw_sprite_ext(spr_gp_icon,5,cam_x+288,cam_y+220,1,1,0,c_white,1);                                                 
								draw_text(cam_x+313,cam_y+215,"+");
		
			switch(isKeyboard)
            {
                case 0: 
                    draw_sprite(spr_gp_icon,10,cam_x+319,cam_y+220);  
                    break;
                case 1: 
                    draw_sprite(spr_key_icon,scr_key_sprite_tip(global.abil_key),cam_x+319,cam_y+220); 
                    break;
            }
		}	
		#endregion
		
		#region нижний правый
		if global.superattack3 = 1{
			draw_sprite_ext(spr_gp_icon,4,cam_x+288,cam_y+250,1,1,0,c_white,1);                                                 
								draw_text(cam_x+310,cam_y+245,"+");
			switch(isKeyboard)
            {
                case 0: 
                    draw_sprite(spr_gp_icon,10,cam_x+319,cam_y+250);  
                    break;
                case 1: 
                    draw_sprite(spr_key_icon,scr_key_sprite_tip(global.abil_key),cam_x+319,cam_y+250); 
                    break;
            }
		}
		#endregion
		
		
		
		#endregion
		
		
		
		
		
		#endregion
		break;
	case 2:
		switch(page_pos_tip){
			case 1:
				#region Hook
				
					script_lng_pos_tip_hook();
					draw_set_alpha(1)
					if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);	

					//draw_sprite_ext(spr_tip_hook,-1,480-104-32,52,1,1,0,c_white,alpha);
					draw_sprite_ext(spr_tip_hook,-1,           cam_x_m-24,cam_y+120,1,1,0,c_white,1);
					draw_sprite_ext(spr_hook_block,-1,         cam_x_m-64,cam_y+160,1,1,0,c_white,1);
					draw_sprite_ext(spr_molded_crawling_run,-1,cam_x_m-32,cam_y+240,1,1,0,c_white,1);
					draw_sprite_ext(spr_fastfly_molded_idle,-1,cam_x_m+32,cam_y+230,1,1,0,c_white,1);


					draw_set_halign(fa_middle);
					draw_set_color(c_aqua);

					// 1
					//draw_text(room_width/2-48,16,text1);
					//draw_text(room_width/2,16,text1);

					// В СЕРЕДИНЕ
					draw_set_color(c_yellow)
					draw_text(cam_x_m,cam_y+48,text2);
					//draw_text(room_width/2-48,52,text2);

					draw_set_halign(fa_center)
					draw_set_color(c_white);
					// на земле слева

					draw_text(cam_x_m,cam_y+96,text3);

					draw_text(cam_x_m,cam_y+180,text4);

				#endregion
				break;
			case 2:
				#region Cloud tp
				script_lng_pos_tip_tp();
				if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
				draw_set_color(c_black)

				draw_sprite_ext(spr_tip_tp,-1,        cam_x+300,cam_y+80,1,1,0,c_white,1);
				draw_sprite_ext(spr_block_pos_tp_r,-1,cam_x+60, cam_y+200,1,1,0,c_white,1);
				draw_sprite_ext(spr_block_pos_tp_u,-1,cam_x+60, cam_y+240,1,1,0,c_white,1);
				draw_sprite_ext(spr_block_pos_tp_l,-1,cam_x+100,cam_y+200,1,1,0,c_white,1);
				draw_sprite_ext(spr_block_pos_tp_d,-1,cam_x+100,cam_y+240,1,1,0,c_white,1);

				draw_set_halign(fa_middle);
				draw_set_color(c_aqua);

				// 1
				//draw_text(cam_x_m,cam_16,text1);
				//draw_text(room_width/2-72,16,text1);

				// В СЕРЕДИНЕ
				draw_set_color(c_yellow)
				draw_text(cam_x_m-72,cam_y+48,text2);
				draw_text(cam_x_m-72,cam_y+80,text3);
				//draw_text(room_width/2-72,112,text4);
				draw_set_color(c_white);
				draw_text(cam_x_m,cam_y+160,text5);

				// на земле слева
				draw_set_halign(fa_left);

				// в воздухе справа

				// на земле справа

				draw_text(cam_x+140,cam_y+210,text6);

				#endregion
				break;
			case 3:
				#region Superdash
				script_lng_pos_tip_superdash();
				draw_set_alpha(1)
				if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
				draw_set_color(c_black)

				draw_sprite_ext(spr_player_masked_superdash,-1,    cam_x+480-54,cam_y+80+12,-1,1,0,c_white,1);
				draw_sprite_ext(spr_superdash_stream3,-1,          cam_x+480-54,cam_y+80+12,-1,1,0,c_white,1);
				draw_sprite_ext(spr_player_masked_presuperdash3,-1,    cam_x+64,cam_y+144,1,1,0,c_white,1);
				draw_sprite_ext(spr_superdash_vfx_3,-1,cam_x+64,cam_y+144,1,1,0,c_white,1);

				draw_sprite_ext(spr_block_superdash_destr,-1,cam_x+350,cam_y+190,1,1,0,c_white,1);
				draw_sprite_ext(spr_block_superdash_up,-1,cam_x+410,cam_y+190,1,1,0,c_white,1);


				draw_set_halign(fa_middle);
				draw_set_color(c_aqua);

				// 1
				//draw_text(cam_x_m-48,cam_y+16,text1);

				// В СЕРЕДИНЕ
				draw_set_color(c_yellow)
				draw_text(cam_x_m-50,cam_y+48,text2);
				draw_text(cam_x_m-50,cam_y+78,text4);

				draw_set_halign(fa_left)
				draw_set_color(c_white);
				draw_text(cam_x+96,cam_y+120,text3);

				draw_set_halign(fa_center)
				draw_set_color(c_white);
				// на земле слева


				draw_text(cam_x_m,cam_y+230,text6);

				draw_set_halign(fa_left)
				draw_set_color(c_white);
				draw_text(cam_x+24,cam_y+180,text5);




				
				
				#endregion
				break;
			case 4:
				#region Doublejump
				script_lng_pos_tip_djump();
				draw_set_alpha(1)
				if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

				draw_sprite_ext(spr_doublejump_wings,-1,         cam_x+432,cam_y+52+32,1,1,0,c_white,1);
				draw_sprite_ext(spr_doublejump_block_frwrd,-1,   cam_x+38, cam_y+120+24,1,1,0,c_white,1);
				draw_sprite_ext(spr_doublejump_block_up,-1,      cam_x+38, cam_y+164+24,1,1,0,c_white,1);
				draw_sprite_ext(spr_doublejump_block_inf,-1,	 cam_x+38, cam_y+208+24,1,1,0,c_white,1);


				draw_set_halign(fa_left);
				draw_set_color(c_aqua);

				// 1
				//draw_text(room_width/2,16,text1);
				//draw_text(room_width/2-64,16,text1);

				// В СЕРЕДИНЕ
				draw_set_color(c_yellow)
				draw_text(cam_x+32,cam_y+48,text2);

				draw_set_color(c_white);
				// на земле слева
				draw_set_halign(fa_left);
				draw_text(cam_x+64,cam_y+120-8-6+24,text3);

				// в воздухе справа
				draw_text(cam_x+64,cam_y+180-8-16-3+24,text4);

				// на земле справа
				draw_text(cam_x+64,cam_y+240-13-32+24,text5);

				
				#endregion
				break;
			case 5:
				#region Soul
				script_lng_pos_tip_clone();
				draw_set_alpha(1)
				if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);


				draw_sprite_ext(spr_tip_clone1,-1,cam_x+480-104-32,cam_y+48,1,1,0,c_white,1);
				draw_sprite_ext(spr_tip_clone2,-1,cam_x+32,        cam_y+110,1,1,0,c_white,1);

				draw_set_halign(fa_middle);
				draw_set_color(c_aqua);

				// 1
				//draw_text(room_width/2,16,text1);
				//draw_text(room_width/2-48,16,text1);

				// В СЕРЕДИНЕ
				draw_set_color(c_yellow)
				draw_text(cam_x_m-48,cam_y+48,text2);
				draw_text(cam_x_m-48,cam_y+80,text3);

				draw_set_halign(fa_left)
				draw_set_color(c_white);
				// на земле слева

				//draw_text(cam_x+176,cam_y+120,text4);
				draw_text(cam_x+170,cam_y+120,text4);

				draw_set_halign(fa_middle);

				draw_text(cam_x_m,cam_y+190,text5);


				
				#endregion
				break;
		}	
		break;
}
draw_line_width_color(cam_x+32,cam_y+32,cam_x+480-32,cam_y+32,1.5,c_white,c_yellow);
}


#endregion
 