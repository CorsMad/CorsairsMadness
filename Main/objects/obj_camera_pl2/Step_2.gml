/// @description Insert description here
// You can write your code in this editor

/*
  0 - На игроке
  1 - перемещение вправо
  2 - справа
  3 - пермещение на игрока
*/

switch(state)
{
	case 0:
		x = obj_Player.x;
		y = 0;
		break;
	case 1:
		x+=5;
		if x > room_width-135 {
			x = room_width-135;
			state = 2;
		}
		break;
	case 3:
		x-=5
		if x < 135 {
			x = 135;
			state = 0;
		}		
}