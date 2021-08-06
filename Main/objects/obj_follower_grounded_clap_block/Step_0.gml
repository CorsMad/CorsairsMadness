/// @description Insert description here
// You can write your code in this editor
y+=spd;
if spd < 4
{
    spd+=0.1;
}

t++;
switch(t)
{
    case 1:     image_angle = 0;break;
    case 5:     image_angle = 90;break;
    case 10:    image_angle = 180;break;
    case 15:    image_angle = 270;break;
    case 20:    t = 0;break;              
}

if y > room_height+32 
{
    instance_destroy();   
}