/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol){
    x = fol.x;
    y = fol.y-64-fol_y;
    
    if state = 1 {
        if image_alpha < 1 image_alpha+=0.2;                 
    }
    if state = 2 {
        
        image_index = 2;
        t++;
        if t = 1 instance_create_depth(x,y,depth-1,obj_sfx1);
        if t > 10 fol_y+=0.1;
        if t > 20 image_alpha-=0.2;
        if image_alpha<=0 instance_destroy();
    }
} else instance_destroy()









