//fnc_confirmlevel1draw();

draw_sprite_ext(spr_map_confirm,select,room_width/2,room_height/2,1,1,0,c_white,1)

draw_set_color(c_white);
switch(global.language){
    case 1:     
        draw_set_font(fnt_pixel_ru);       
    default:
        draw_set_font(fnt_pixel);
        break;
}

draw_set_halign(fa_center);
draw_text(room_width/2,room_height/2-13,text_onisldn);
draw_text(room_width/2-53.5,room_height/2+8,yes);
draw_text(room_width/2+54,room_height/2+8,no);


