/// @description Insert description here
// You can write your code in this editor



switch(state)
{
    case 0:
        x = obj_Player.x;
        break;
	case 1:
        x = lerp(x,424,0.1);		
		break;
	case 2:
		if instance_exists(obj_Player)
		{
			if conf = 0
			{
				x = lerp(x,obj_Player.x,0.1);
				if abs(y-obj_Player.x) <= 1 {
					conf = 1;
					x=obj_Player.x;
				}
			}
			if conf = 1
			{
				x = obj_Player.x;					
			}
		}
		break;
}
