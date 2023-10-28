/// @description Insert description here
// You can write your code in this editor



image_speed = sign(hspd)*2;

y+=vspd;
x+=hspd;
vspd+=0.2;
if vspd>0 {
    t++;
    if t > 20 {
        image_alpha -=0.05;   
    }
    if image_alpha < 0 instance_destroy();
}
    









