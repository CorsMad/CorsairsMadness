/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);




//draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+64,c_black,c_black,c_black,c_black,false);
//draw_sprite(spr_text_icons,2,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_halign(fa_center);
draw_set_alpha(appear_alpha)

draw_sprite(spr_merch_choose_leave,0,room_width/2,room_height/2-46)

if global.language = 1 draw_text(room_width/2,158.5+2-46,eng3); else draw_text(room_width/2,158.5-46,eng3);;
if global.language = 1 draw_text(room_width/2,131.5+2-46,eng4); else draw_text(room_width/2,131.5-46,eng4);;
//draw_text(room_width/2,38,eng3);
draw_set_alpha(1);
draw_set_color(c_grey);

//draw_rectangle(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+239,camera_get_view_y(view_camera[0])+33,1);   
//draw_rectangle(camera_get_view_x(view_camera[0])+249,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+269,camera_get_view_y(view_camera[0])+33,1);   

//draw_set_color(c_red);

if canControl = 1 {
var y1 = 158-46;
var y2 = 131-46;

switch(select)
{
    case 0: 
        var _xsc = 0;
        switch(global.language){
            case 0:  _xsc = 6; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
            case 1:  _xsc = 5; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
            case 2:  _xsc = 6; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
            case 3:  _xsc = 5; draw_rectangle(camera_get_view_x(view_camera[0])+240-17,y1,camera_get_view_x(view_camera[0])+240+17,y1+14,1);        break;   
            case 4:  _xsc = 8; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
            case 5:  _xsc = 8; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
            case 6:  _xsc = 9; draw_rectangle(camera_get_view_x(view_camera[0])+240-41,y1,camera_get_view_x(view_camera[0])+240+41,y1+14,1);        break;   
            case 7:  _xsc = 6; draw_rectangle(camera_get_view_x(view_camera[0])+240-17,y1,camera_get_view_x(view_camera[0])+240+17,y1+14,1);        break;   
            case 8:  _xsc = 13;draw_rectangle(camera_get_view_x(view_camera[0])+240-41,y1,camera_get_view_x(view_camera[0])+240+41,y1+14,1);      break;   
            case 9:  _xsc = 11;draw_rectangle(camera_get_view_x(view_camera[0])+240-41,y1,camera_get_view_x(view_camera[0])+240+41,y1+14,1);      break;   
            case 10: _xsc = 9; draw_rectangle(camera_get_view_x(view_camera[0])+240-28,y1,camera_get_view_x(view_camera[0])+240+28,y1+14,1);        break;   
        }
        draw_sprite_ext(spr_text_9slicesmall_tp,0,camera_get_view_x(view_camera[0])+240,120+18-46,_xsc,1,0,c_white,1);
        //draw_sprite(spr_leave_choice,0,38,10);
        //draw_rectangle(camera_get_view_x(view_camera[0])+149,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249,camera_get_view_y(view_camera[0])+33,1); 
        //draw_rectangle(camera_get_view_x(view_camera[0])+38,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+140,camera_get_view_y(view_camera[0])+34,1);   
        //draw_rectangle(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139,camera_get_view_y(view_camera[0])+33,1);           
        break;
    case 1: 
        var _xsc = 0;
        switch(global.language){
            case 0:  _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-57, y2,  camera_get_view_x(view_camera[0])+240+57, y2+14,1);     break;   
            case 1:  _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-49, y2,  camera_get_view_x(view_camera[0])+240+49, y2+14,1);     break;   
            case 2:  _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-65, y2,  camera_get_view_x(view_camera[0])+240+65, y2+14,1);     break;   
            case 3:  _xsc = 2; draw_rectangle(camera_get_view_x(view_camera[0])+240-52, y2,  camera_get_view_x(view_camera[0])+240+52, y2+14,1);     break;   
            case 4:  _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-79, y2,  camera_get_view_x(view_camera[0])+240+79, y2+14,1);     break;   
            case 5:  _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-79, y2,  camera_get_view_x(view_camera[0])+240+79, y2+14,1);     break;   
            case 6:  _xsc = 4; draw_rectangle(camera_get_view_x(view_camera[0])+240-97, y2,  camera_get_view_x(view_camera[0])+240+97, y2+14,1);     break;   
            case 7:  _xsc = 2; draw_rectangle(camera_get_view_x(view_camera[0])+240-61, y2,  camera_get_view_x(view_camera[0])+240+61, y2+14,1);     break;   
            case 8:  _xsc = 4; draw_rectangle(camera_get_view_x(view_camera[0])+240-141,y2,  camera_get_view_x(view_camera[0])+240+141,y2+14,1);     break;   
            case 9:  _xsc = 4; draw_rectangle(camera_get_view_x(view_camera[0])+240-121,y2,  camera_get_view_x(view_camera[0])+240+121,y2+14,1);     break;   
            case 10: _xsc = 3; draw_rectangle(camera_get_view_x(view_camera[0])+240-93, y2,  camera_get_view_x(view_camera[0])+240+93, y2+14,1);     break;   
        }
        draw_sprite_ext(spr_text_9slicesmall_tp,0,camera_get_view_x(view_camera[0])+240,120+45-46,_xsc,1,0,c_white,1);
        //draw_sprite(spr_leave_choice,0,148,10);
        //draw_rectangle(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+139,camera_get_view_y(view_camera[0])+33,1);  
        //draw_rectangle(camera_get_view_x(view_camera[0])+148,camera_get_view_y(view_camera[0])+10,camera_get_view_x(view_camera[0])+250,camera_get_view_y(view_camera[0])+34,1);   
        //draw_rectangle(camera_get_view_x(view_camera[0])+149,camera_get_view_y(view_camera[0])+11,camera_get_view_x(view_camera[0])+249,camera_get_view_y(view_camera[0])+33,1);           
        break;

}

#region skip
	draw_set_alpha(alpha_skip);

	draw_set_halign(fa_center);
	draw_set_color(c_white)	
	
	//draw_set_halign(fa_left) 
	draw_sprite_ext(spr_skip_frame,0,room_width/2-45,100-46,1,1,0,c_white,alpha_skip);
	draw_sprite_stretched_ext(spr_skip_line,0,room_width/2-45+5,100+5-46,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
#endregion

}

draw_set_alpha(1)
