/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_mask)
{
    instance_destroy();
    fnc_hp_after_destroy_vase(5,15);
    instance_create_depth(x,y-8,depth,obj_sfx3);
    instance_create_depth(x,y,depth,obj_vase2_p1);
    instance_create_depth(x,y,depth,obj_vase2_p2);
}