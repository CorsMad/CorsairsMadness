/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
image_alpha-=0.05;
hspd = lerp(hspd,0,0.001);
vspd+=0.1;
if image_alpha <= 0
{
    instance_destroy();   
}
