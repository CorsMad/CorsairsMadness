/// @description Insert description here
// You can write your code in this editor
if image_alpha < 1 image_alpha+=0.05;
t++;
if t = 100 instance_destroy();

if !instance_exists(fol) instance_destroy();