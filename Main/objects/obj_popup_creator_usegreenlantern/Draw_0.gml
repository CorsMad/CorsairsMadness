/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    draw_set_colour(c_black);
	draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+240,camera_get_view_y(view_camera[0])+40,14,1,0,c_white,alpha);
    var xx,yy;
    xx = camera_get_view_x(view_camera[0])+240;
    yy = camera_get_view_y(view_camera[0])+34;
    
    draw_set_halign(fa_center);       
    if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
    draw_set_color(c_white);
    draw_text_color(xx,yy,text,c_white,c_white,c_white,c_white,alpha)
}