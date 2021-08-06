/// @description Insert description here
// You can write your code in this editor
a++;
if a mod 9 == 0
{
    image_alpha = 0;   
}

if a mod 19 == 0
{
   image_alpha = 1;    
}


if a = 100 
{
    instance_create_depth(x,-128,obj_gui_controller.depth+1,obj_follower_grounded_clap_block);   
}
if a = 119 
{
    instance_destroy();   
}