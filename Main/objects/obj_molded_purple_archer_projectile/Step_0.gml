/// @description Insert description here
// You can write your code in this editor

image_alpha = 1;
#region anim
if hspeed < 0 image_xscale = 1 else image_xscale = -1;

#endregion

if  place_meeting(x,y,obj_hitbox_mask)
{
    if obj_Player.x < x 
    {
    	instance_create_depth(x-10,y,-1,obj_sfx_weapon_slash);
    } else instance_create_depth(x+10,y,-1,obj_sfx_weapon_slash);
    var i = instance_create_depth(x,y,depth,obj_molded_purple_archer_projectile_d)
    i.image_xscale = image_xscale;
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
            
    var i = instance_create_depth(x,y,depth,obj_molded_purple_archer_projectile_d)
    i.image_xscale = image_xscale;
    
	instance_destroy();
}