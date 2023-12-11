a++;
if a > 200
{
    alpha += 0.005;
    if alpha >= 1 
    {
    	instance_destroy();	
    }	
}