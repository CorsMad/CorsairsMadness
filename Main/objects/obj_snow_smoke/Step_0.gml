/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

if state != 0 {
    if hspd < hspd_max hspd+=hspd_spd;   
}


switch(state){
    case 0:
        if image_index > 2 image_index = 0;
        t++;
        if t = 80 {
            t = 0;
            image_index = choose(3,4,5);
            state = 1;
        }
        break;
    case 1:
        if image_index > 5 image_index = 2
        t++;
        image_alpha=  0.6;
        if t= 80 {
            t = 0;
            image_index = choose(6,7,8);
            state = 2;
        }
        break;
    case 2:
        if image_index > 8 image_index = 6;
        t++;
        if t > 150 image_alpha -= 0.01;
        if image_alpha <= 0 instance_destroy();
        break;
}








