/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    var xx,yy;
    xx = obj_Player.x;
    yy = obj_Player.y-64;
    
    draw_set_halign(fa_center);    
    
    stringoutline = string(text);
    
    //Outline
    draw_set_color(c_black);
    draw_text(xx+1,yy+1,stringoutline);
    draw_text(xx-1,yy-1,stringoutline);
    draw_text(xx,yy+1,stringoutline);
    draw_text(xx+1,yy,stringoutline);
    draw_text(xx,yy-1,stringoutline);
    draw_text(xx-1,yy,stringoutline);
    draw_text(xx-1,yy+1,stringoutline);
    draw_text(xx+1,yy-1,stringoutline);
    
    draw_set_color(c_white);
    draw_text(xx,yy,text);
}