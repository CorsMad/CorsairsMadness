/// @description Insert description here
// You can write your code in this editor
state = 0;
t=0;
//pos 0 - влево, 1 - врпаво
t_max = irandom_range(50,150);
hspd = random_range(-7,-4)
vspd = random_range(0.1,0.3);
wave = random_range(-0.1,0.1);
image_blend = c_yellow;
image_alpha = random_range(0.4,0.8);

scale = choose(0.25,0.5,0.75,1);
/*
state = 0;
t=0;
t_max = irandom_range(50,150);

vspd = random_range(0.1,0.3);
pos = choose(0,1,2,3); // 0 прямо // 1 вверх // 2 вниз // 3 синус
a = 0;
hspd = random_range(-3,-5)

cos_sign = choose(0,1);
image_blend = c_yellow;