/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    image_alpha+= 0.05;
    if image_alpha >= 1
    {
        state = 1;   
    }
}

if state = 1
{
        t++;
        if t = 100
        {
            state = 2;   
        }
}

if state = 2
{
    image_alpha -= 0.05;  
    if image_alpha <=0 
    {
        instance_destroy();   
    }
}
    
