/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player){
    if obj_Player.x>448 && obj_Player.x< 960 {
        if image_alpha < 0.4 image_alpha +=0.01;
    } else {
         if image_alpha > 0 image_alpha -=0.01;  
    }
}

