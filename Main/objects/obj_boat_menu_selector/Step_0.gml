/// @description Insert description here
// You can write your code in this editor
if isDead = 0
{
    t++;
    if t = 60
    {
        t = 0;   
    }
    if t >30
    {
        image_alpha = 0;   
    } else image_alpha = 1;
}

if isDead = 1
{
    image_alpha -=0.1;
    if image_alpha <= 0
    {
        instance_destroy();       
    }
}