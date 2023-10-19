/// @description Insert description here
// You can write your code in this editor

y+=vspd
if vspd < 3 vspd+=0.1;
t++;
if t mod 10 = 0 instance_create_depth(x+random_range(-8,8),y+16+random_range(-8,8),depth-1,obj_sfx_dust_expl_big);
if image_alpha > 0.5 image_alpha -=0.05;
image_angle+=rotat_spd;
switch(side){
    case -1:  
        if rotat_spd < 2 rotat_spd+=0.1;
        break;
    case 1:
        if rotat_spd > -2 rotat_spd-=0.1;
        break;
}








