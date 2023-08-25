/// @description Insert description here
// You can write your code in this editor
if state = 1  
{
    if !place_meeting(x,y,obj_Player)
    {
        mask_index = spr_wall_trigger_closed_mask_h;	   
    } else mask_index = spr_wall_trigger_closed_h;  
	
}
if state = 0 || state = 2
{
    mask_index = spr_wall_trigger_closed_h;  
}

if state = 1 
{
    if t < 23
    {
        t++;
    }
    if t mod 2 = 0
    {
        image_index +=1;   
    }
    if image_index = 7
    {
        fnc_snd_play_over(snd_wall_closed);   
    }
    if t = 14
    {
        instance_create_depth(x+96,y+8,-1,obj_sfx1);
	    instance_create_depth(x+96,y+8,-1,obj_sfx_dust_expl_small);  
    }
}

if state = 2
{
    if t < 23
    {
        t++;   
    }
    if t mod 2 = 0
    {
        image_index -=1;   
    }
}
