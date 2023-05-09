/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol)
{
    x = lerp(x,fol.x,0.6);
    y = lerp(y,fol.y,0.6);
    image_alpha = fol.image_alpha;
} else instance_destroy();