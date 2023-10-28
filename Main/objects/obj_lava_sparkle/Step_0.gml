/// @description Insert description here
// You can write your code in this editor

image_angle = direction


hspeed = lerp(hspeed,0,0.04);

t++;
if t > t_max {
    image_alpha -= 0.05   
}

if image_alpha <= 0 instance_destroy();