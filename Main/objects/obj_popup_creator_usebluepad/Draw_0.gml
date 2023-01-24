/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    draw_set_colour(c_black);
    draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+240,40,16,1,0,c_white,alpha);
	//draw_rectangle(camera_get_view_x(view_camera[0])+100,30,camera_get_view_x(view_camera[0])+480-100,camera_get_view_y(view_camera[0])+48,false);
    var xx,yy;
    xx = room_width/2;
    yy = 34;
    
    draw_set_halign(fa_center);    
   
    if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel) ;
    draw_set_color(c_white);
    //draw_text(xx,yy,text);
    draw_text_color(xx,yy,text,c_white,c_white,c_white,c_white,alpha)
    
}