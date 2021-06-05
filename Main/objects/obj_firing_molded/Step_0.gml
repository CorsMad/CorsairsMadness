/// @description Insert description here
// You can write your code in this editor

#region ожидание
if state = 1
{	
	if instance_exists(obj_Player)
        {
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    	    if dis < 200 
    		{
    	        state = 2;
    	    }   
        }
}
#endregion

#region подготовка и выстрел
if state = 2
{
	t++;
	switch(t)
	{
		case 30:	instance_create_depth(x,y,depth,obj_firing_molded_projectile);break;
		case 60:	state = 1;
					t = 0;
					break;
	}	
}	
#endregion

