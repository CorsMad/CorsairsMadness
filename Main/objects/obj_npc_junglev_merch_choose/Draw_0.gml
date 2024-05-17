/// @description Insert description here
// You can write your code in this editor


draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+64,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icons,2,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_halign(fa_center);

if global.language = 1 {
    draw_text(89 +10,18,eng1);
    draw_text(199+10,18,eng2);
    draw_text(309+10,18,eng3); 
} else {
    draw_text(89 +10,16,eng1);
    draw_text(199+10,16,eng2);
    draw_text(309+10,16,eng3);    
}

draw_set_color(c_gray);

if canControl = 1{
    switch(select){
        case 0: 
            draw_sprite(spr_merch_choose,0,camera_get_view_x(view_camera[0])+39+10,camera_get_view_y(view_camera[0])+11);  
            draw_rectangle(camera_get_view_x(view_camera[0])+149+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249+10,camera_get_view_y(view_camera[0])+11+22,1)
            draw_rectangle(camera_get_view_x(view_camera[0])+259+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+359+10,camera_get_view_y(view_camera[0])+11+22,1)
            break;
        case 1: 
            draw_sprite(spr_merch_choose,0,camera_get_view_x(view_camera[0])+149+10,camera_get_view_y(view_camera[0])+11);        
            draw_rectangle(camera_get_view_x(view_camera[0])+39+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139+10,camera_get_view_y(view_camera[0])+11+22,1)
            draw_rectangle(camera_get_view_x(view_camera[0])+259+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+359+10,camera_get_view_y(view_camera[0])+11+22,1)
            break;
        case 2: 
            draw_sprite(spr_merch_choose,0,camera_get_view_x(view_camera[0])+259+10,camera_get_view_y(view_camera[0])+11);        
            draw_rectangle(camera_get_view_x(view_camera[0])+39+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139+10,camera_get_view_y(view_camera[0])+11+22,1)
            draw_rectangle(camera_get_view_x(view_camera[0])+149+10,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249+10,camera_get_view_y(view_camera[0])+11+22,1)
            break;
    }
}