/// @description Insert description here
// You can write your code in this editor
image_angle = angle;
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
        var i = instance_create_depth(x,y,depth,obj_cemetery_laser_beam_glow_end);
        i.image_angle = image_angle;
    }  
}
    
