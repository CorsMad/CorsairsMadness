/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    image_alpha+= 0.075;
    if image_alpha >= 1
    {
        state = 1;   
    }
}

if state = 1
{
        t++;
        if t = 25
        {
            state = 2;  
            t = 0;
        }
}

if state = 2
{
    image_alpha -= 0.075;  
    if image_alpha <=0 
    {
        state = 3;  
    }
}

if state = 3
{
    t++;
        if t = 25
        {
            state = 0; 
            t = 0;
        }    
}
    
