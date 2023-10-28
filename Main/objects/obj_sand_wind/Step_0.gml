/// @description Insert description here
// You can write your code in this editor
x+=hspd;
switch(state){
    case 0:
        if image_alpha<1 image_alpha +=0.05;
        if image_alpha=1 state = 1
        break;
    case 1:
        t++;
        if t = 20 {
        image_alpha = 0.5;
        image_xscale = 0.5;
        image_yscale = 0.5;
        t = 0;
        state = 2;
        }
        break;
    case 2: 
        image_alpha-=0.05;
        if image_alpha<=0 instance_destroy();
        break;
    
}








