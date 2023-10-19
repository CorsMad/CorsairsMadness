/// @description Insert description here
// You can write your code in this editor
y+=vspd;
if place_meeting(x,y,obj_hitbox)
{
	if instance_exists(obj_maze5_counter_controller)
	{
        fnc_snd_play_onetime(snd_coin_bad) ;
        instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
		obj_maze5_counter_controller.CurrentScore-=20;
		instance_destroy();
        instance_create_depth(x,y-10,depth-1,obj_maze5_graph_coinm20);
	}
}

if y >= room_height+32 instance_destroy();