/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol)
{
    x = fol.x;
    y = fol.y;
    image_xscale = fol.image_xscale;
    if fol.state!=2 instance_destroy();
    
} else instance_destroy();

