/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    draw_set_colour(c_black);
    draw_sprite_ext(spr_text_9slicesmall,0,camera_get_view_x(view_camera[0])+330,52,10,2,0,c_white,alpha);
	//draw_rectangle(camera_get_view_x(view_camera[0])+180,30,camera_get_view_x(view_camera[0])+480-60,camera_get_view_y(view_camera[0])+68,false);
    
    draw_set_halign(fa_left);
    var xx,yy;
    xx = camera_get_view_x(view_camera[0])+220;
    yy = camera_get_view_y(view_camera[0])+66;
    
    
    x1 = camera_get_view_x(view_camera[0])+280;
    y1 = camera_get_view_y(view_camera[0])+52;
    
    switch(isKeyboard)
    {
        case 0: draw_sprite_ext(spr_gp_icon,5,x1 + 38, y1-8, 1,1,0,c_white,alpha);break;        
        case 1: draw_sprite_ext(spr_key_icon,scr_key_sprite(global.down_key),x1 + 38, y1-8, 1,1,0,c_white,alpha);break;        
    }
    
//    draw_sprite(spr_key_icon,scr_key_sprite(global.down_key),x1 + 40, y1);
    
    draw_set_color(c_white)
    
    draw_text_color(x1-10,y1-11,text,c_white,c_white,c_white,c_white,alpha)
    //draw_text(x1-8,y1-4,text);
    draw_text_color(xx+10,yy-10,text2,c_white,c_white,c_white,c_white,alpha);
    //draw_text(xx,yy,text2);
}