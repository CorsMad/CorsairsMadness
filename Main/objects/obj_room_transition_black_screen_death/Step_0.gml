a++;
if a > 2
{
    alpha += 0.075;
    if alpha >= 1 
    {
        if instance_exists(obj_Player)
        {
            instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_room_transition_to_loading);   
            
        }
    	instance_destroy();	
    }	
}