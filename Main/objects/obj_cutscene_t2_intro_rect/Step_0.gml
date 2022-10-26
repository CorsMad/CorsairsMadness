if start = 1
{
    a++;
    if a > 2
    {
        alpha += 0.075;
        if alpha >= 1 
        {
            room_goto(Tutor2FirstLoading);
        	instance_destroy();	
        }	
    }
}