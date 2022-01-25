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
/*
if t > 500
{
    draw_set_halign(fa_left);
    draw_text(64,70,"Total gold collected ");
    draw_sprite(spr_hud_gold,0,220,68);
    draw_text(240,70,global.gold);
}
*/
if t > 500 
{
    draw_set_halign(fa_left);
    draw_text(64,90,"Total secrets collected ");
    draw_sprite(spr_hud_secret,0,240,88);
    draw_text(260,90,string(global.secrets) + " / 3");
}


if t > 700
{
    draw_text(64,120,"Your rank is ");
    if global.secrets = 3 
    {
        draw_sprite(spr_rank_s,0,180,118);
    }
    if global.secrets = 2
    {
        draw_sprite(spr_rank_a,0,180,121);
    }
    if global.secrets = 1 
    {
        draw_sprite(spr_rank_b,0,180,121);
    }
    if global.secrets < 1 
    {
        draw_sprite(spr_rank_c,0,180,121);
    }
}

if t > 900 
{
    draw_set_halign(fa_center);
    draw_text(room_width/2,224,"Press 'ENTER / Start' to return to main menu");
}




 