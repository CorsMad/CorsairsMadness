/// @description Insert description here
// You can write your code in this editor

player_input();

if state = 0
{
    image_alpha+=0.05;
    if image_alpha >=1
    {
        state = 1;   
    }
}

if state = 1
{
    if delay < 5
    {
        delay++;
    }
    if delay = 5
    {
        if key_jump_pressed 
        {
            obj_ctscn_trailer_merchant_menu_controller.image_index = 1;
            state = 2;
        
        }
        if key_dashing
        {
            state = 2;
        }
    }
}

if state = 2
{
    image_alpha-=0.05;
    if image_alpha <=0
    {
        instance_destroy();   
    }
}