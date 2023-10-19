/// @description Insert description here
// You can write your code in this editor
if image_alpha!= 1 image_alpha = 1 
sprite_index = spr_block_superdash_destr;
if place_meeting(x,y,obj_hitbox_mask_superdash)
{
    fnc_snd_play_over(snd_lava_block_destr)
    if instance_exists(obj_Player)
    {
        obj_Player.superdash_y = y+12;  
    }
	var fx = instance_create_depth(x,y,depth-1,obj_sfx3);
	fx.image_xscale = 2;
	fx.image_yscale = 2;
	instance_create_depth(x,y,depth,obj_block_superdash_destr_d);
    instance_destroy();   
}


