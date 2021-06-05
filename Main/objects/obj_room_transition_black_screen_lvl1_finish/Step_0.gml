a++;
if a > 160
{
    alpha += 0.075;
    if alpha >= 1 
    {
        if instance_exists(obj_Player)
        {
            instance_destroy(obj_Player);   
        }
        room_goto(L1_endscreen);
        instance_destroy();	
    }	
}