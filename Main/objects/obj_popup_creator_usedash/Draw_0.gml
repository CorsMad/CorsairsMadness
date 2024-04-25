/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    draw_set_colour(c_black);
	//draw_rectangle(camera_get_view_x(view_camera[0])+160,30,camera_get_view_x(view_camera[0])+480-160,camera_get_view_y(view_camera[0])+68,false);
    draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+240,52,15,2,0,c_white,alpha);
    
    draw_set_halign(fa_left);
    var xx,yy;
    xx = camera_get_view_x(view_camera[0])+240;
    yy = camera_get_view_y(view_camera[0])+64;
    
    
    x1 = camera_get_view_x(view_camera[0])+240;
    y1 = camera_get_view_y(view_camera[0])+50;
    
    switch(isKeyboard)
    {
        case 0: draw_sprite_ext(spr_gp_icon,1,x1 + 12, y1+2,1,1,0,c_white,alpha);
                draw_text_color(x1+34,y1-1,"/",c_white,c_white,c_white,c_white,alpha);
                draw_sprite_ext(spr_gp_icon,8,x1 + 46, y1+2,1,1,0,c_white,alpha); 
                break;
        case 1: draw_sprite_ext(spr_key_icon,scr_key_sprite(global.dash_key),x1 + 12, y1+2,1,1,0,c_white,alpha); break;
    }
    
    
    //draw_sprite(spr_key_icon,scr_key_sprite(global.dash_key),x1 + 40, y1+4);
    
    draw_set_color(c_white)
    if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
    
    draw_set_halign(fa_right);
    draw_text_color(x1,y1-11,text1,c_white,c_white,c_white,c_white,alpha);
    draw_text_color(xx,yy-10,text,c_white,c_white,c_white,c_white,alpha);
    
    /*
    draw_set_halign(fa_right);
    draw_text_color(x1,y1-11,text1,c_white,c_white,c_white,c_white,alpha);
    draw_set_halign(fa_center)
    draw_text_color(xx+10,yy-10,text,c_white,c_white,c_white,c_white,alpha);
    */
}