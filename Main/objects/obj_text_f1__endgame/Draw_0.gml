/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
if t > 100
{
    draw_set_font(fnt_pixel);
    draw_set_halign(fa_center);
    draw_text(room_width/2,30,"Congratulations!");
}
if t > 300
{
    draw_set_halign(fa_center);
    draw_text(room_width/2,50,"you have successfully completed the demo level!");
}
if t > 500
{
    draw_set_halign(fa_center);
    draw_text(room_width/2,70,"Now go to another level if you haven't tried");
}

if t > 700 
{
         draw_text(room_width/2,224,"Press 'Enter' to return to main menu");
}
