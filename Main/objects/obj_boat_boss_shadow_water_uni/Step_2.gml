/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
    
            x = fol.x + fol_x;
            y = fol.y + fol_y;   
    
    depth = fol.depth+1;
} else instance_destroy();