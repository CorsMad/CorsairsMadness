/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol)
{
    if fol.sprite_index = spr_boss_dp_dash
    {
        if fol.image_index = 5 || fol.image_index = 6
        {
            x = fol.x
            y = fol.y                               
        } else instance_destroy();
    } else instance_destroy();
} else instance_destroy();






