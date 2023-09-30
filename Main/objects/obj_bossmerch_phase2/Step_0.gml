/// @description Insert description here
// You can write your code in this editor
/*

0 - появление
1 - выбор чем бить
2 - действие левой рукой
3 - действие правой рукой
4 - 
5 - конец
*/


switch(state){
	case 1:
	t++;
	if t = 50{
		if instance_exists(hand_l) && instance_exists(hand_r) { // обе руки
			switch(turn){
				case 0:
					state = 2;
					break;
				case 1:
					state = 3;
					break;
			}			
		} else if instance_exists(hand_l) && !instance_exists(hand_r){ // только левая
				state = 2;
			}
		else if instance_exists(hand_r) && !instance_exists(hand_l){ // только правая
				state = 3;			
			} else if !instance_exists(hand_r) && !instance_exists(hand_l) {
				state = 5;

			}
		t = 0;
	}
		break;
	case 2:
		t++;
		if t = 10{
			if instance_exists(hand_l) 
			{
				hand_l.state = 1;
				t = 0;
				turn = 1;
				state = 4;
			} else {
				t = 0;
				state = 1;	
			}
		}
		break;
	case 3:
		t++;
		if t = 10{
			if instance_exists(hand_r) 
			{
				hand_r.state = 1;
				t = 0;
				turn = 0;
				state = 4;
			} else {
				t = 0;
				state = 1;	
			}
		}
		break;
	case 5:
		instance_destroy();
		instance_create_depth(x,y,depth,obj_bossmerch_phase2_death);
		break;
	
}
