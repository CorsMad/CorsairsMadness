a++;
if a > 200
{
    alpha += 0.075;
    if alpha >= 1 
    {
        if instance_exists(obj_Player)
        {
            instance_destroy(obj_Player);   
        }
        room_goto(S1_stat);
        instance_destroy();	
    }	
}