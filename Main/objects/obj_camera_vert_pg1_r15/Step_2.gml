/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    switch(state)
    {
        case 0:
            if instance_exists(obj_Player)
    		{
    			if conf = 0
    			{
    				y = lerp(y,obj_Player.y-16,0.1);
    				if abs(y-obj_Player.y-16) <= 1 {
    					conf = 1;
    					y=obj_Player.y-16;
    				}
    			}
    			if conf = 1
    			{
    				y = obj_Player.y-16;					
    			}
    		}
            break;
        case 1:
            if instance_exists(obj_Player)
    		{
    			if conf = 0
    			{
    				y = lerp(y,135,0.1);
    				if abs(y-(135)) <= 1 {
    					conf = 1;
    					y=135;
    				}
    			}
    			if conf = 1
    			{
    				y = 135;	
    			}	
    		}
            break;
    }
}



