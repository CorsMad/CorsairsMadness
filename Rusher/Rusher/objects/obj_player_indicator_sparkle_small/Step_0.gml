
speed = lerp(speed,0,0.05);
image_angle = direction;
image_alpha -=0.1;
if image_alpha <=0 instance_destroy()