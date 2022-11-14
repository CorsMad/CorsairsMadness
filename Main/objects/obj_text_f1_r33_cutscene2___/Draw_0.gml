/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0,0,480,31,c_black,c_black,c_black,c_black,false);
draw_sprite(spr_text_icon_follower_grounded,0,6,2);

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
draw_set_color(c_white); 



if text = 1
{
    draw_text(42,10,"Absolutely useless.");  
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
    draw_text(42,11,"But please, do not despair!"); 
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
    draw_text(42,11,"It's not over for you ... yet."); 
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
    draw_text(42,11,"I will give you the opportunity to escape."); 
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
    draw_text(42,11,"Don't disappoint me Cap, let's have some fun!"); 
    if t_text > 29
    {
        draw_sprite(spr_text_icon_button_k,0,460,4);   
    }
} 







if text = 6
{
    draw_rectangle_color(42,0,480,30,c_black,c_black,c_black,c_black,false);
    instance_create_depth(0,0,-1,obj_gui_controller);
    obj_follower_grounded_cutscene.state = 7;
    if instance_exists(obj_cutscene_f1_r33_1)
    {
        instance_destroy(obj_cutscene_f1_r33_1);   
    }
        obj_Player.isDead = 2.1;   
    if instance_exists(obj_wall_trigger_close1_f1_r33)
    {
        obj_wall_trigger_close1_f1_r33.state = 2;
        obj_wall_trigger_close1_f1_r33.t = 0;
    }
    instance_create_depth(0,0,0,obj_music_controller_temple);
    instance_destroy();
}