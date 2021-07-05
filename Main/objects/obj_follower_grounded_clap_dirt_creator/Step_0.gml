/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 10 == 0 
{
    instance_create_depth(obj_Player.x+random_range(-200,200),0,obj_gui_controller.depth+1,obj_follower_grounded_clap_dirt);       
}

if t = 110
{
    instance_create_depth(obj_Player.x,0,obj_gui_controller.depth+1,obj_follower_grounded_clap_block);
}

if t = 140 
{
    instance_destroy();
}