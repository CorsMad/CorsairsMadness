/// @description Insert description here
// You can write your code in this editor
image_index = random(7);
image_speed = 0;
image_angle = choose(45,90,135,180,225,270,315,0);
scale = choose(0.5,1);

vspd = random_range(0,2);

image_alpha = choose(0.5,0.6,0.7,0.8,0.9);

isSolid = choose(0,1);

live_timer_max = irandom_range(10,120)
live_timer = 0;
