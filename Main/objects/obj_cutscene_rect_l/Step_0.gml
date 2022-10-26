if start = 1
{
    a++;
    if a > 2
    {
        alpha -= 0.075;
        if alpha <= 0 
        {
        	instance_destroy();	
        }	
    }
}