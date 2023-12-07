/// @description Insert description here
// You can write your code in this editor

/*
0 - появление и переход
1 - остановка
2 - 
*/

x+=hspd;

switch(state){
	case 0:
		hspd=-3;
		if x <=256+240+64{
			state = 1;	
			hspd = 0;
		}		
		break;
	case 1:	
		x = lerp(x,256+240,0.05);
		break;
	case 2:
		if hspd >-3 hspd -=0.05 else state = 3;
		break;
	case 3:
		if hspd <0 hspd+=0.029 else hspd = 0;
		break;
		
		
	/*	
	case 2:
		if hspd >-2 hspd-=0.01;
		if x <= 240 {
			x = 240;
			hspd = 0;
			state = 3;
		}		
		break;
	*/
}