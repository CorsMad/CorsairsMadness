/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
    if fol.phase = 1 && (fol.state = 3 || fol.state = 5) 
    {
        if fol.image_index >= 9   
        {
            x = fol.x;
            y = fol.y+10;   
        } else 
        {
            x = fol.x;
            y = fol.y+24;   
        }
    } else 
    {
        x = fol.x;
        y = fol.y+24;
    }
    depth = fol.depth+1;
} else instance_destroy();