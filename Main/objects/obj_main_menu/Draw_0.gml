/// @description Insert description here
// You can write your code in this editor

#region Отрисовка текстов

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(16,16 + gap*i, menu[submenu, i]);
}
#endregion

#region отрисовка ползунков музыки и эффектов

if submenu = 4
{
    draw_sprite(spr_slider_vfx_music,0,100,21.5);
    draw_sprite(spr_slider_vfx_music,0,100,37.5);
    
    if index = 0 draw_sprite(spr_slider_vfx_music_selector,1,116+16*(music*10),21.5); else draw_sprite(spr_slider_vfx_music_selector,0,116+16*(music*10),21.5); 
    if index = 1 draw_sprite(spr_slider_vfx_music_selector,1,116+16*(sfx*10),37.5);  else draw_sprite(spr_slider_vfx_music_selector,0,116+16*(sfx*10),37.5); 
    
}

#endregion

#region отрисовка текстов в меню управления

if submenu = 31
{
    for (var k = 0; k < 9; ++k) {
        if submenu = 31 && KBControlChange = 1
        {
            if index == k draw_line_color(175,28+16*k,225,28+16*k,c_red,c_red) else draw_line_color(175,28+16*k,225,28+16*k,c_white,c_white)          
        }   else draw_line_color(175,28+16*k,225,28+16*k,c_white,c_white)         
    }
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);

    draw_text(200,16+16*0,string(pk_up));
    draw_text(200,16+16*1,string(pk_down));
    draw_text(200,16+16*2,string(pk_left));
    draw_text(200,16+16*3,string(pk_right));
    draw_text(200,16+16*4,string(pk_jump));
    draw_text(200,16+16*5,string(pk_attack));
    draw_text(200,16+16*6,string(pk_dash));
    draw_text(200,16+16*7,string(pk_use_item));
    draw_text(200,16+16*8,string(pk_use_abil));
}


#region название клавиш

#endregion

#endregion