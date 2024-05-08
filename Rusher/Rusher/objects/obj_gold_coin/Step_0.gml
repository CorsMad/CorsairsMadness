/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
if t = 0 vspd+=spd; else {vspd = 0;hspd = 0;}

if vspd > 0 && life_t > 0{
    life_t--;
}

if life_t <=0 {
    t++;
}

if t >= t_max instance_destroy();








