/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{

    draw_set_colour(c_black);
	draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+240,52,8,2,0,c_white,alpha);
    
    draw_set_halign(fa_left);
    var xx,yy;
    xx = camera_get_view_x(view_camera[0])+240;
    yy = camera_get_view_y(view_camera[0])+66;
    
    
    x1 = camera_get_view_x(view_camera[0])+205;
    y1 = camera_get_view_y(view_camera[0])+52;
    
    
    draw_sprite_ext(spr_key_icon,scr_key_sprite(global.item_key),x1 + 38, y1-8,1,1,0,c_white,alpha);
    
    
    draw_set_color(c_white)
    
        draw_set_color(c_white)
    
    draw_text_color(x1-10,y1-11,text1,c_white,c_white,c_white,c_white,alpha);
    draw_set_halign(fa_center);
    draw_text_color(xx,yy-10,text,c_white,c_white,c_white,c_white,alpha);
}