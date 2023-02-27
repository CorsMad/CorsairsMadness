/// @description Insert description here
// You can write your code in this editor
if image_alpha < 1 && t < 30
{
    image_alpha +=0.2;   
}

y += vspd;
vspd+=grav;

t++;
if t > 30 image_alpha -= 0.1;   
if image_alpha <= 0 instance_destroy();
