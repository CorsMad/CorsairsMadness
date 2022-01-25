/// @description Insert description here
// You can write your code in this editor


//draw_sprite(32,96,"boxWidth" + string(boxWidth));

//draw textbox
draw_sprite_ext(spr_textbox_popup,0,x,y,sprw,sprh,0,c_white,1);//(spr_textbox_popup,0,x,y);
boxWidth = sprite_get_width(spr_textbox_popup);

draw_set_color(c_white);
draw_set_font(fnt_pixel_small);



if charCount < string_length(text[page])
{
    charCount+=0.5;
}
draw_set_halign(fa_center);
textPart = string_copy(text[page],1,charCount);
draw_text_ext(x+((boxWidth*sprw)/2),y+6,textPart,stringHeight/1.5,boxWidth*(sprw));
