/// @description Insert description here
// You can write your code in this editor

t++;
if t = 50 isOn = 0;
if isOn = 1
{
    if image_alpha < 1 image_alpha+=0.1;   
}
if isOn = 0
{
    if image_alpha > 0 image_alpha-=0.1;     
}


switch(isOn)
{
    case 0 :    mask_index = spr_boss_l1_fire_block_mask_off; break;
    case 1 :    mask_index = spr_boss_l1_fire_block_mask_on;break;
}