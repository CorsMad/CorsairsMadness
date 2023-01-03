/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    
    var xx,yy;
    xx = camera_get_view_x(view_camera[0])+240;
    yy = camera_get_view_y(view_camera[0])+32;
    
    draw_set_halign(fa_center);    
    
    stringoutline = string(text);
    
    //Outline
    draw_text_color(xx+1,yy+1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx-1,yy-1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx,yy+1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx+1,yy,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx,yy-1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx-1,yy,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx-1,yy+1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    draw_text_color(xx+1,yy-1,stringoutline,c_black,c_black,c_black,c_black,alpha);
    

    draw_text_color(xx,yy,text,c_white,c_white,c_white,c_white,alpha);
    /*
    draw_set_color(c_white);
    draw_text_ext(xx,yy,text);
    */
}


