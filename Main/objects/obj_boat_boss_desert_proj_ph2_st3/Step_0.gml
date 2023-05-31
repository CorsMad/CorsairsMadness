/// @description Insert description here
// You can write your code in this editor


if state = 0
{
    t++;
    if t = 50 state = 1;
    if image_alpha <1 image_alpha+=0.1;   
}

if state = 1
{
    if image_alpha > 0 image_alpha-=0.1;
    if image_alpha <=0 instance_destroy();
}