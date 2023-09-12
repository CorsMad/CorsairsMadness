/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 2 == 0 
{
	if instance_exists(obj_gui_controller){
    instance_create_depth(obj_Player.x+random_range(-200,200),0,obj_gui_controller.depth+1,obj_follower_grounded_clap_dirt);       
	}
	if instance_exists(obj_gui_controller_finalboss){
    instance_create_depth(obj_Player.x+random_range(-200,200),0,obj_gui_controller_finalboss.depth+1,obj_follower_grounded_clap_dirt);       
	}
}

if t = 110
{
	if instance_exists(obj_gui_controller){
    instance_create_depth(obj_Player.x,48,obj_gui_controller.depth+1,obj_follower_grounded_clap_warning);
	}
	if instance_exists(obj_gui_controller_finalboss){
    instance_create_depth(obj_Player.x,48,obj_gui_controller_finalboss.depth+1,obj_follower_grounded_clap_warning);
	}
}

if t = 140 
{
    instance_destroy();
}