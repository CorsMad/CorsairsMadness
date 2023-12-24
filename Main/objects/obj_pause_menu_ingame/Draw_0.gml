/// @description Insert description here
// You can write your code in this editor





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
    } else if submenu = 41
    {
        draw_set_font(fnt_pixel);
        //text_drop_shadow(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+32+gap*i,text_col,c_black,menu[submenu, i],1,1);
        draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+32 + gap*i, menu[submenu, i]);   
    } else {
     
        //text_drop_shadow(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64+gap*i,text_col,c_black,menu[submenu, i],1,1);
        draw_text(camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+64+gap*i, menu[submenu, i]);
        
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
    for (var k = 0; k < 9; ++k) {
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

 