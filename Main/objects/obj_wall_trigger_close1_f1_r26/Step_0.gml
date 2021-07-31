/// @description Insert description here
// You can write your code in this editor
if state = 1  
{
	mask_index = spr_wall_trigger_closed_mask;	
}
if state = 0 || state = 2
{
    mask_index = spr_wall_trigger_closed;  
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
    if t = 14
    {
        instance_create_depth(x+8,y+96,-1,obj_sfx1);
	    instance_create_depth(x+8,y+96,-1,obj_sfx_dust_expl_small);  
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
