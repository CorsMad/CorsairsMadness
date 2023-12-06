/// @description Insert description here
// You can write your code in this editor


hspd = lerp(hspd,0,0.05);
vspd = lerp(vspd,-0.1,0.025);

x+=hspd;
y+=vspd;

t++;

if t > 40 && t < 180 {
	if t mod turn_rate = 0 {
		image_angle+=30;	
	}
}

switch(t){
	case 10:  image_index = 1;break;	
	case 20:  image_index = 2;break;	
	case 30:  image_index = 3;break;	
	case 40:  image_index = 4;break;	
	case 180: image_index = 5;break;
	case 185: image_index = 6;break;
	case 190: image_index = 7;break;
	case 195: image_index = 8;break;
	case 200: instance_destroy();break;
}