/// @description Insert description here
// You can write your code in this editor
player_input();

switch(state){
	case 1:
		if t < 27 t++;
		switch(t)
		{
		    case 5: alpha = 0.25;break;   
		    case 10: alpha = 0.5;break;
			case 15: alpha = 0.75;break;
			case 20: 
		        alpha = 1;
		        break;   
			case 25:
				canSkip = 1;
				break;
		}

		if canSkip = 1 && (key_attack || key_jump)
		{
			   instance_destroy();
			   obj_txt_tip_possessed_pre.state = 2;	
		}
		break;
	case 2:
		break;
}


