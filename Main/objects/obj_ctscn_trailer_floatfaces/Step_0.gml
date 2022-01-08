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
a+=0.05;
if image_index = 0 || image_index = 2 || image_index = 4  
{
    y = y + cos(a)/5;
}
if image_index = 1 || image_index = 3
{
    y = y + sin(a)/5;
}

