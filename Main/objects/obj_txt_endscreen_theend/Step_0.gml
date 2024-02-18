/// @description Insert description here
// You can write your code in this editor

t++;
switch(t){
	case 200: image_alpha = 0.25;break;
	case 210: image_alpha = 0.5;break;
	case 220: image_alpha = 0.75;break;
	case 230: image_alpha = 1;break;
	case 400: image_alpha = 0.75;break;
	case 410: image_alpha = 0.5;break;
	case 420: image_alpha = 0.25;break;
	case 430: image_alpha = 0;break;
	case 700: 
	room_goto(PreMainMenu);
	instance_destroy();
	break;
}