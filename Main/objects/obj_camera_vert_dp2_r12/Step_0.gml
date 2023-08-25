/*
  0 - 1 фаза
  1 - переход во вторую фазу
  2 - 2-я фаза
  3 - переход в 3 фазу
*/

switch(state)
{
	case 0:
		if instance_exists(obj_Player)
		{
			if conf = 0
			{
				y = lerp(y,obj_Player.y,0.1);
				if abs(y-obj_Player.y) <= 1 {
					conf = 1;
					y=obj_Player.y;
				}
			}
			if conf = 1
			{
				y = obj_Player.y;					
			}
			x = 0;
		}
		break;
	case 1:
		if instance_exists(obj_Player)
		{
			if conf = 0
			{
				y = lerp(y,obj_Player.y-64,0.1);
				if abs(y-(obj_Player.y-64)) <= 1 {
					conf = 1;
					y=obj_Player.y-64;
				}
			}
			if conf = 1
			{
				y = obj_Player.y-64;	
			}
			x = 0;	
		}
		break;
}

    