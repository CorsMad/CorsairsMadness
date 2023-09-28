/// @description Insert description here
// You can write your code in this editor



switch(state){
    case 0:
    if image_alpha < 1 image_alpha+=0.15; else state = 1;
        break;
    case 1:
        image_alpha-=0.075;
        if image_alpha<=0 instance_destroy();
        break;
}





