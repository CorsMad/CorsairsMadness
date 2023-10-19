/// @description Insert description here
// You can write your code in this editor
y+=vspd;
if vspd < 1 vspd+=vel;

if vspd > 0.5 {
    image_index = 3;
    if image_alpha > 0.5 image_alpha -=0.05;
}

if vspd >= 1 instance_destroy()