/// @description Insert description here
// You can write your code in this editor

#region отрисовка графики

//draw_sprite_ext(spr_mainmenu_mask_pic,7,0,-38,1,1,0,c_white,title_alpha);

//draw_sprite_ext(bgr_sky,0,0,bgr_sky_yoffset,1,1,0,c_white,bgr_alpha)
//draw_sprite_tiled_ext(bgr_bgr,0,bgr_move,bgr_yoffset,1,1,c_white,bgr_alpha)
draw_sprite_ext(bgr_sky,0,0,bgr_sky_yoffset,1,1,0,c_white,bgr_main_alpha)
draw_sprite_tiled_ext(bgr_bgr,0,bgr_move,bgr_yoffset,1,1,c_white,bgr_main_alpha)

draw_sprite_ext(bgr_blackscreen,0,0,0,1,1,0,c_white,bgr_sky_cover_alpha);

//draw_sprite_ext(spr_mainmenu_mask_pic_n,0,240,135-32,1,01,0,c_white,bgr_main_alpha);
draw_sprite_ext(spr_mainmenu_mask_pic,9,0,0,1,1,0,c_white,bgr_main_alpha);

draw_sprite_ext(spr_mainmenu_mask_title,21,0,-58,1,1,0,c_white,bgr_main_alpha);

draw_sprite_ext(bgr_blackscreen,0,0,0,1,1,0,c_white,bgr_cover_alpha);


#endregion

#region Отрисовка текстов

draw_set_halign(fa_center);
if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);

var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
   
    if (i = 0 && submenu = 0 && !file_exists(_path)) draw_set_color(c_dkgrey); else draw_set_color(c_white);
    
    
    if submenu = 5
    {
        draw_text(room_width/2,room_height/2+52,confirm_eng);   
    }
    
    if i == index 
    {
        if (index = 0 && submenu = 0 && !file_exists(_path)) draw_set_color(c_gray) else draw_set_color(c_red);
        
    }
        
    
    if submenu = 31 //|| submenu = 32
    {
        draw_set_halign(fa_left);   
    } else draw_set_halign(fa_center);
    
    if submenu = 32
    {
        draw_sprite(spr_options_gamepad,0,room_width/2,room_height/2-35); 
        
    }
    if submenu = 0
    {        
        draw_text(room_width/2,room_height/2+52 + gap*i, menu[submenu, i]);
    } else if submenu = 31
    {
        draw_text(120,32 + gap*i, menu[submenu, i]);
	} else if submenu = 32
	{
		draw_text(room_width/2,180 + gap*i, menu[submenu, i]);	
	} else if submenu = 41
    {
        draw_set_font(fnt_pixel);
        draw_text(room_width/2,32 + gap*i, menu[submenu, i]);   
    } else if submenu = 6 {
		draw_set_font(fnt_pixel);
		draw_text(64,96 + gap*i, menu[submenu, i]);	
	} else
    draw_text(room_width/2,64 + gap*i, menu[submenu, i]);
      
}
#endregion

#region Отрисовка геймпада
if submenu = 32
{
    draw_set_halign(fa_left);
    draw_set_color(c_white);

    draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+16+16,menu[31, 7]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+32+16,menu[31, 9]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+48+16,menu[31, 6]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+64+16,menu[31, 8]);
	
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+80 +16,menu[31, 7]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+96 +16,menu[31, 6]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+112+16,menu[31, 4]);
	draw_text(camera_get_view_x(view_camera[0])+240+20,camera_get_view_y(view_camera[0])+128+16,menu[31, 5]);

/*
draw_text(room_width/2+36,59,menu[31, 7]);
draw_text(room_width/2+36,75,menu[31, 6]);
draw_text(room_width/2+36,91,menu[31, 4]);
draw_text(room_width/2+36,107,menu[31, 5]);*/
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
    draw_sprite(spr_slider_vfx_music,0,room_width/2-96,86.5);
    draw_sprite(spr_slider_vfx_music,0,room_width/2-96,130.5);
    
    if index = 0 draw_sprite(spr_slider_vfx_music_selector,1,(room_width/2-80)+16*(global.MSCvolume*10),86.5); else draw_sprite(spr_slider_vfx_music_selector,0,(room_width/2-80)+16*(global.MSCvolume*10),86.5); 
    if index = 1 draw_sprite(spr_slider_vfx_music_selector,1,(room_width/2-80)+16*(global.SFXvolume*10),130.5);  else draw_sprite(spr_slider_vfx_music_selector,0,(room_width/2-80)+16*(global.SFXvolume*10),130.5); 
    
}

#endregion

#region отрисовка текстов в меню управления

if submenu = 31
{
    for (var k = 0; k < 10; ++k) {
        if submenu = 31 && KBControlChange = 1
        {
            if index == k draw_line_color(280,44+16*k,320,44+16*k,c_red,c_red) else draw_line_color(280,44+16*k,320,44+16*k,c_white,c_white)          
        }   else draw_line_color(280,44+16*k,320,44+16*k,c_white,c_white)                        
    }
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);       
    
    if (index = 0 && KBControlChange = 1) draw_text_color(300,32+16*0,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*0,string(pk_up),c_white,c_white,c_white,c_white,1);
    if (index = 1 && KBControlChange = 1) draw_text_color(300,32+16*1,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*1,string(pk_down),c_white,c_white,c_white,c_white,1);
    if (index = 2 && KBControlChange = 1) draw_text_color(300,32+16*2,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*2,string(pk_left),c_white,c_white,c_white,c_white,1);
    if (index = 3 && KBControlChange = 1) draw_text_color(300,32+16*3,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*3,string(pk_right),c_white,c_white,c_white,c_white,1);
    if (index = 4 && KBControlChange = 1) draw_text_color(300,32+16*4,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*4,string(pk_jump),c_white,c_white,c_white,c_white,1);
    if (index = 5 && KBControlChange = 1) draw_text_color(300,32+16*5,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*5,string(pk_attack),c_white,c_white,c_white,c_white,1);
    if (index = 6 && KBControlChange = 1) draw_text_color(300,32+16*6,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*6,string(pk_dash),c_white,c_white,c_white,c_white,1);
    if (index = 7 && KBControlChange = 1) draw_text_color(300,32+16*7,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*7,string(pk_use_item),c_white,c_white,c_white,c_white,1);
    if (index = 8 && KBControlChange = 1) draw_text_color(300,32+16*8,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*8,string(pk_use_abil),c_white,c_white,c_white,c_white,1);
    if (index = 9 && KBControlChange = 1) draw_text_color(300,32+16*9,"<...>",c_red,c_red,c_red,c_red,1) else draw_text_color(300,32+16*9,string(pk_weapon_select),c_white,c_white,c_white,c_white,1);
    
/*
    draw_text(300,32+16*0,string(pk_up));
    draw_text(300,32+16*1,string(pk_down));
    draw_text(300,32+16*2,string(pk_left));
    draw_text(300,32+16*3,string(pk_right));
    draw_text(300,32+16*4,string(pk_jump));
    draw_text(300,32+16*5,string(pk_attack));
    draw_text(300,32+16*6,string(pk_dash));
    draw_text(300,32+16*7,string(pk_use_item));
    draw_text(300,32+16*8,string(pk_use_abil));
*/
    
}


#region название клавиш

#endregion

if submenu = 6
{
	draw_set_alpha(1)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	var cr_gap = 16;

	for (var i = 0; i < array_length(cr_menu[0]); ++i) {
		draw_text_scribble(room_width/2,(start_y + cr_gap*i) + move_y, cr_menu[0, i]);	
	}

	//draw_sprite(spr_credits_logo,0,354,96);
	draw_sprite_ext(spr_credits_logo,0,room_width/2,310+move_y,0.25,0.25,0,c_white,1);
	
	
	
	
	
	
   // draw_set_color(c_white);
   // draw_set_halign(fa_center);
   // draw_text(240,32,string(musiccred));
   // draw_set_halign(fa_left);
   // draw_text(64,64,"xDeviruchi");
   // draw_text(64,80,"Joshua McLean");
   // draw_text(64,96,"How2Bboss");
   // draw_text(64,112,"RyanAvx");
   // draw_text(64,128,"Hefka");
   // draw_set_halign(fa_right);
   // draw_text(416,64,"DanzMacabre- Music");
   // draw_text(416,80,"Snabisch");
   // draw_text(416,96,"Joel Francis Burford");
   // draw_text(416,112,"CATHRAN MUSIC");
   // draw_text(416,112,"wyver9");
   // draw_text(416,112,"R-sen");
    //HyphenPixel
    //thetiptoptomcat
    //chippy01302
}

#endregion

