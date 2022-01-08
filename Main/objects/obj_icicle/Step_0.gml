/// @description Insert description here
// You can write your code in this editor
if t = 0
{
    sprite_index = spr_icicle_start;   
}
if t_max > t > 0 
{
    sprite_index = spr_icicle_seen;
    image_speed = 1;
}

if t = t_max 
{
    sprite_index = spr_icicle_move; 
    image_speed = 0;
}

if t = 1 || t = 15 || t = 29  
{
    instance_create_depth(x+random_range(-8,8),y,depth-1,obj_sfx_dust_expl_small);
}