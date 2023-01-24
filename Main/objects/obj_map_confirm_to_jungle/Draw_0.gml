/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_map_confirm_to_jungle,subimg,0,0,1,1,0,c_white,1);

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
draw_set_halign(fa_center);

draw_text(240,36,text1);
draw_text(240,48,text2);

if global.language = 1
{
    draw_text(186,66.5,textyes);
    draw_text(294,66.5,textno);   
}   else 
{   draw_text(186,65,textyes);
draw_text(294,65,textno);}
