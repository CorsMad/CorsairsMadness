/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol){
    t++;
    if t > 40{
        y_up-=0.05;
        image_alpha-=0.05;
    }
    x = fol.x;
    y = fol.y+y_up;
    if image_alpha<=0 instance_destroy();
} else instance_destroy();







