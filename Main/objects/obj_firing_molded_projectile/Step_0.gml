/// @description Insert description here
// You can write your code in this editor
if  place_meeting(x,y,obj_hitbox_mask)
{
    fnc_snd_play_over(snd_skate_human)
    var i = instance_create_depth(x,y,depth,obj_firing_molded_projectile_reverse)
    if obj_Player.dir = 1
	{
		i.hspeed = 8;
	} else i.hspeed = -8;
	instance_destroy();
}
if  place_meeting(x,y,obj_hitbox_mask_dash)
{
    obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -2;
    obj_Player.dashing_timer_count = 1;
            
    if obj_Player.x < x 
    {
    	instance_create_depth(x-10,y,-1,obj_sfx_weapon_slash);
    } else instance_create_depth(x+10,y,-1,obj_sfx_weapon_slash);
            
    var i = instance_create_depth(x,y,depth,obj_firing_molded_projectile_reverse)
    if obj_Player.dir = 1
	{
		i.hspeed = 8;
	} else i.hspeed = -8;
    
	instance_destroy();
}