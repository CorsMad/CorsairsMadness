/// @description Insert description here
// You can write your code in this editor

a+=1;
if a > 20 {
   image_alpha -=0.1;
}
if a > 30 {
   instance_destroy();
}

y = lerp(y,y_cr-rnd,0.02);
