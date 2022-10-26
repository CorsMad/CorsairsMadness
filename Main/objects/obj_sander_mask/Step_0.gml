/// @description Insert description here
// You can write your code in this editor
if instance_exists(owner)
{
    if owner.hide = 0
    {
        mask_index = spr_sander_mask_on;   
    } else mask_index = spr_sander_mask_off;
}

if !instance_exists(owner)
{
    instance_destroy();   
}