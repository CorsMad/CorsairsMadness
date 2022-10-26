if start = 1
{
    a++;
    if a > 2
    {
        alpha += 0.01;
        if alpha >= 1 
        {
            room_goto(Cutscene_T2_ending);
        	instance_destroy();	
        }	
    }
}