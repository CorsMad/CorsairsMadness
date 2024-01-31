/// @description Insert description here
// You can write your code in this editor

image_blend = c_yellow;


t++;
if t = 20 {image_angle -=45;t=0;}


if image_alpha >= 1	  dir = 0;
if image_alpha <= 0.2 dir = 1;


switch(dir){
	case 0:image_alpha-=0.05;break;	
	case 1:image_alpha+=0.05;break;	
}

