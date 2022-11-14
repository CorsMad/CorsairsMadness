/// @description Insert description here
// You can write your code in this editor

#region Отриосвка черн

draw_set_colour(c_black);

draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+270,-1);

draw_set_alpha(1);

#endregion

#region Отрисовка текстов
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
if submenu = 10 draw_text(camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+16,confirm); 
if submenu = 11 draw_text(camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+16,confirm); 
var gap = 16;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+16+gap*i, menu[submenu, i]);
}

#endregion

#region отрисовка ползунков музыки и эффектов

if submenu = 4
{
    draw_sprite(spr_slider_vfx_music,0,camera_get_view_x(view_camera[0])+100,camera_get_view_y(view_camera[0])+21.5);
    draw_sprite(spr_slider_vfx_music,0,camera_get_view_x(view_camera[0])+100,camera_get_view_y(view_camera[0])+37.5);
    
    if index = 0 draw_sprite(spr_slider_vfx_music_selector,1,camera_get_view_x(view_camera[0])+(116+16*(global.MSCvolume*10)),camera_get_view_y(view_camera[0])+21.5); else draw_sprite(spr_slider_vfx_music_selector,0,camera_get_view_x(view_camera[0])+(116+16*(global.MSCvolume*10)),camera_get_view_y(view_camera[0])+21.5); 
    if index = 1 draw_sprite(spr_slider_vfx_music_selector,1,camera_get_view_x(view_camera[0])+(116+16*(global.SFXvolume*10)),camera_get_view_y(view_camera[0])+37.5); else draw_sprite(spr_slider_vfx_music_selector,0,camera_get_view_x(view_camera[0])+(116+16*(global.SFXvolume*10)),camera_get_view_y(view_camera[0])+37.5); 
    

}

#endregion

#region отрисовка текстов в меню управления

if submenu = 31
{
    for (var k = 0; k < 9; ++k) {
        if submenu = 31 && KBControlChange = 1
        {
            if index == k draw_line_color(camera_get_view_x(view_camera[0])+175,camera_get_view_y(view_camera[0])+(28+16*k),camera_get_view_x(view_camera[0])+225,camera_get_view_y(view_camera[0])+(28+16*k),c_red,c_red) else draw_line_color(camera_get_view_x(view_camera[0])+175,camera_get_view_y(view_camera[0])+(28+16*k),camera_get_view_x(view_camera[0])+225,camera_get_view_y(view_camera[0])+(28+16*k),c_white,c_white)          
        }   else draw_line_color(camera_get_view_x(view_camera[0])+175,camera_get_view_y(view_camera[0])+(28+16*k),camera_get_view_x(view_camera[0])+225,camera_get_view_y(view_camera[0])+(28+16*k),c_white,c_white)         
    }
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);

    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*0),string(pk_up));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*1),string(pk_down));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*2),string(pk_left));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*3),string(pk_right));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*4),string(pk_jump));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*5),string(pk_attack));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*6),string(pk_dash));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*7),string(pk_use_item));
    draw_text(camera_get_view_x(view_camera[0])+200,camera_get_view_y(view_camera[0])+(16+16*8),string(pk_use_abil));
}


#region название клавиш

#endregion

#endregion
