/// @description Insert description here
// You can write your code in this editor


switch(state)
{   
    case 0:
        if image_alpha < 1 image_alpha +=0.05
        if image_alpha >= 1 {
         state = 1;   
         image_alpha = 1;
        }                
        break;
    case 1:
        t++;
        if t > 50 {
           image_alpha -=0.05; 
           if image_alpha <=0 {
                image_alpha = 0;
                t = 0;
                state = 0;
           }
        }
        break;
}








