/// @description Insert description here
// You can write your code in this editor

/*
0 - выключ
1 - включение
2 - включен
3 - выклюение
*/


switch(state)
{
	case 0:
		t=0;
		break;
	case 1:
		t++;
		switch(t)
		{
			case 5:image_index = 1;break;
			case 10:image_index = 2;break;
			case 15:image_index = 3;break;
			case 20:image_index = 4;break;
			case 25:image_index = 5;
				state = 2;
				t = 0;
				break;
		}
		break;
	case 2:
		break;
	case 3:
		t++;
		switch(t)
		{
			case 5:image_index = 4;break;
			case 10:image_index = 3;break;
			case 15:image_index = 2;break;
			case 20:image_index = 1;break;
			case 25:image_index = 0;
				state = 0;
				t = 0;
				break;
		}
		break;
}