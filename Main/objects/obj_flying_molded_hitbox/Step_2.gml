/// @description Insert description here
// You can write your code in this editor

// Следование

if instance_exists(oleg) 
{
    image_xscale = oleg.image_xscale;
    x = oleg.x;
    y = oleg.y;
    
    if oleg.state!=4 || oleg.enemy_hp <= 0
    {
        instance_destroy();   
    }
}

if !instance_exists(oleg) 
{
    instance_destroy();   
}