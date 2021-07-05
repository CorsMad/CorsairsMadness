/// @description Insert description here
// You can write your code in this editor
if  place_meeting(x,y,obj_hitbox_mask)
{
    var i = instance_create_depth(x,y,depth,obj_firing_molded_projectile_reverse)
    if obj_Player.dir = 1
	{
		i.hspeed = 8;
	} else i.hspeed = -8;
	instance_destroy();
}