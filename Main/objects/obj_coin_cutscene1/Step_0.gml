y+=vspd;
switch(state)
{
	case 0:
		vspd+=0.2;
		if vspd >= 0 {
			t = 0;
			state = 1;
			vspd = 0;
			depth = target.depth+1;	
		}
		break;
	case 1:
		if spd < 2 spd+=0.1;
		if point_distance(x, y, target.x, target.y-10) > 3
		{
		    move_towards_point(target.x, target.y-10, spd);
		}
		else 
		{
            fnc_snd_play_onetime(snd_coin_ctscn_end);
			instance_destroy();	
		}
		break;
}