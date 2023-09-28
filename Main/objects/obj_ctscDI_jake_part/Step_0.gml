/// @description Insert description here
// You can write your code in this editor
t++;
if state = 0 {
    if t mod 2 = 0  {
        if image_alpha = 1 image_alpha = 0.7 else image_alpha = 1;   
    }
}

if state = 1 {
    image_alpha-=0.5;
    if image_alpha<=0 instance_destroy();
}






