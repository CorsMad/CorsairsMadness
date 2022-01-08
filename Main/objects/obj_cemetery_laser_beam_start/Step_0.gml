/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    sprite_index = spr_cemetery_laser_beam_start;   
}

if state = 1
{
    t++;
    if t = 30
    {
        instance_destroy();   
        instance_create_depth(x,y,depth,obj_cemetery_laser_beam_glow);

    }  
}
    
