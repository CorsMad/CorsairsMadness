/// @description Insert description here
// You can write your code in this editor

y+=vspd;
vspd -= spd;
t++;
if image_index >= 3
{
    image_alpha -=0.05;    
}

if t mod 7 = 0
{
    t = 0;
    if turn = 0 image_angle -=45;
    if turn = 1 image_angle +=45;    
}
if image_alpha <=0 instance_destroy();