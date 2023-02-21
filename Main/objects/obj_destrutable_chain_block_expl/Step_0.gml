/// @description Insert description here
// You can write your code in this editorf 
if place_meeting(x,y,obj_hitbox)
{
    fnc_snd_play_over(snd_wall_explosion);  
}
if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_destrutable_chain_block_mask2)
{
    
	instance_create_depth(x,y,-1,obj_destrutable_chain_block_mask2);
	//global.Destructable_tiles_array[MyID,0] = 1;
    instance_destroy();	
}


/*
if global.Destructable_tiles_array[MyID,0] == 1 
{
    instance_destroy();   
}