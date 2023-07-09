/// @description Insert description here
// You can write your code in this editor
draw_self();
switch(global.language){
    case 1:     
        draw_set_font(fnt_pixel_ru);       
    default:
        draw_set_font(fnt_pixel);
        break;
}

draw_set_halign(fa_center);
draw_text(x,y-13,"VYHOD?");
draw_text(x-53.5,y+8,"不");
draw_text(x+54,y+8,"はい");



