/// @description Insert description here
// You can write your code in this editor
if isOn = 0
{
    mask_index = -1;   
}

if isOn = 1
{
    t++;
    
    mask_index = spr_block_trigger_mask;        
    if t = t_max
    {
        isOn = 0;
        t = 0;
    }
}

