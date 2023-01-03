/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(camv_x,0,camv_x+480,camv_y+30,false);
draw_rectangle_color(camv_x,0,camv_x+480,camv_y+64,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icons,6,camv_x+6,camv_y+9);

draw_set_font(fnt_pixel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(camv_x+40,camv_y+10,eng1);
draw_text(camv_x+140,camv_y+10,eng2);


switch(select)
{
    case 0: 
        draw_rectangle(camv_x+38,camv_y+10,camv_x+115,camv_y+20,1);   
        break;
    case 1: 
        draw_rectangle(camv_x+138,camv_y+10,camv_x+172,camv_y+20,1);   
        break;
}