a++;
if a > 100
{
    alpha += 0.075;
    if alpha >= 1 
    {
        room_goto(Ending_stat);
        instance_destroy();	
    }	
}