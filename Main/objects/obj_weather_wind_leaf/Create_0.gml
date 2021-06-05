/// @description Insert description here
// You can write your code in this editor
hspeed = random_range(-6,-4.5);
vspeed = random_range(-2,2);

image_xscale = choose(0.25,0.5);
image_yscale = choose(0.25,0.5);

if hspeed = -12 || hspeed = -11 {
    image_speed = 0.2;
} else image_speed = 0.1;

image_index = random_range(0,3);

image_alpha = 1;

c = 0;                // Счетчик начала удаления
c_max = 60; 

image_blend = choose(c_yellow,c_teal,c_red,c_yellow);