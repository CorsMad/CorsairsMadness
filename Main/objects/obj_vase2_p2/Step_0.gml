/// @description Insert description here
// You can write your code in this editor
hspeed = lerp(hspeed,0,0.05);
vspeed = lerp(vspeed,0,0.05);

if abs(hspeed) < 0.75 && abs(vspeed) < 0.75 
{
    t++;  
}

if t mod 9 == 0
{
    image_alpha = 0.5;   
}

if t mod 19 == 0
{
    image_alpha = 1;   
}


if t = 56 
{
    instance_destroy();   
}