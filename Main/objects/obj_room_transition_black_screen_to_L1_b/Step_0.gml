a++;
if a > 2
{
    alpha += 0.075;
    if alpha >= 1 
    {
        room_goto(L1_b_r1);
    	instance_destroy();	
    }	
}