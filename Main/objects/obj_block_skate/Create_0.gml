/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-1,obj_block_slope_r)
{
    if !place_meeting(x-1,y,obj_block_skate) sprite_index = spr_snowsl_r_start; else    
    if !place_meeting(x+1,y,obj_block_skate) sprite_index = spr_snowsl_r_end; else 
    sprite_index = spr_snowsl_r_mid;
} 

if place_meeting(x,y-1,obj_block_slope_l)
{
    
    if !place_meeting(x+1,y,obj_block_skate) sprite_index = spr_snowsl_l_start; else    
    if !place_meeting(x-1,y,obj_block_skate) sprite_index = spr_snowsl_l_end; else 
    sprite_index = spr_snowsl_l_mid;
 
} //else sprite_index = spr_snowsl_l_start
