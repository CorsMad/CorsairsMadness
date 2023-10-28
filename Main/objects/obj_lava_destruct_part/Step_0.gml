/// @description Insert description here
// You can write your code in this editor
x+=hspd;y+=vspd;

vspd+=0.1;

if vspd > 0 {
    t++;   
}

if t > 10 image_alpha -= 0.05;

if image_alpha <= 0 instance_destroy();









