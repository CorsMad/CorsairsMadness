/// @description Insert description here
// You can write your code in this editor
if vspd < 2 vspd+=acc;
y+=vspd;

t++;
if t = t_max - 10 image_index = 1;
if t > t_max image_alpha-=0.05;
if image_alpha <= 0 instance_destroy();







