/// @description Insert description here
// You can write your code in this editor


if instance_exists(fol_obj)
{
    x = fol_obj.x;
    y = fol_obj.y;
    
    if fol_obj.state != 2 instance_destroy();
    
} else instance_destroy();


