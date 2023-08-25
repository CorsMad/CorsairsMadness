/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_boss_dp_light_block)
{
    image_index = obj_boss_dp_light_block.image_index;   
}

switch(image_index)
{
    case 0: image_alpha = 0;break;   
    case 1: image_alpha = 0.1;break;   
    case 2: image_alpha = 0.2;break;   
    case 3: image_alpha = 0.3;break;   
    case 4: image_alpha = 0.4;break;   
    case 5: image_alpha = 0.5;break;   
    case 6: image_alpha = 0.6;break;   
    case 7: image_alpha = 0.7;break;   
}

if image_index >=5 mask_index = spr_follower_grounded_light_mask else
mask_index = spr_follower_grounded_light_mask_n

