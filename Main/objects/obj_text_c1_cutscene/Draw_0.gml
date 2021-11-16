/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0,0,480,31,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icon_merchant,0,6,2);

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
draw_set_color(c_white); 



if text = 1
{
    draw_text(42,10,"he he . I've seen how well you swim. Need my help?");  
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
}

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
}

if text = 2
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
    instance_create_depth(0,0,-1,obj_gui_controller);
    instance_create_depth(0,0,0,obj_ctscn_trailer_merchant_menu_controller);
    instance_destroy();
}
