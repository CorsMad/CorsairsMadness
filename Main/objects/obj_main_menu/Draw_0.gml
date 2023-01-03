/// @description Insert description here
// You can write your code in this editor

#region отрисовка графики

draw_sprite_ext(spr_mainmenu_mask_pic,7,0,-38,1,1,0,c_white,title_alpha);
draw_sprite_ext(spr_mainmenu_mask_title,16,0,-64,1,1,0,c_white,title_alpha);

#endregion

#region Отрисовка текстов

draw_set_halign(fa_center);
draw_set_font(fnt_pixel);
var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
     
    draw_set_color(c_white);
    
    if submenu = 5
    {
        draw_text(room_width/2,room_height/2+52,confirm_eng);   
    }
    
    if i == index 
    {
        if (index = 0 && submenu = 0 && !file_exists("save1.save")) draw_set_color(c_gray) else draw_set_color(c_red);
        
    }
    
    
    
    
    if submenu = 31
    {
        draw_set_halign(fa_left);   
    } else draw_set_halign(fa_center);
    
    if submenu = 32
    {
        draw_sprite(spr_options_gamepad,0,room_width/2,room_height/2-50);   
    }
    if submenu = 0
    {        
        draw_text(room_width/2,room_height/2+52 + gap*i, menu[submenu, i]);
    } else if submenu = 31
    {
        draw_text(120,32 + gap*i, menu[submenu, i]);
    } else draw_text(room_width/2,64 + gap*i, menu[submenu, i]);
      
}
#endregion

draw_set_halign(fa_center);

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
    for (var k = 0; k < 9; ++k) {
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

#endregion

