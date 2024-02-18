/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol){
    t++;
    if t > 100{
        
        image_alpha-=0.05;
    }
    x = fol.x;
    y = fol.y+y_up;
    if image_alpha<=0 instance_destroy();
	
	if fol.state!= 6 instance_destroy()
} else instance_destroy();







