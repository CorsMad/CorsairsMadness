/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0,0,480,31,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icon_follower_grounded,0,6,2);

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
draw_set_color(c_white); 



if text = 1
{
    draw_text(42,10,"Just look at the big fish caught in my nets.");  
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
    draw_text(42,11,"Well, hello Captain, I've been waiting for you."); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
}

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
}

if text = 3
{
    draw_text(42,11,"And you have changed a little."); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
}

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
}  

if text = 4
{
    draw_text(42,11,"What, has the temple blessed you with power?"); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
} 

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
} 

if text = 5
{
    draw_text(42,11,"Fabulous!"); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
} 

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
} 

if text = 6
{
    draw_text(42,11,"Well, Cap, don't hold yourself back."); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
}

if text = 7
{
    draw_text(42,11,"Let's have some fun"); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
} 

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
} 



if text = 8
{
    draw_text(42,11,"Show me what you are capable of."); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
} 

if isStop = 1 
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
}

if text = 9
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
    instance_create_depth(0,0,-1,obj_gui_controller);
    if instance_exists(obj_Player)
    {
        obj_Player.isDead = 0;   
    }
    instance_destroy();
}
