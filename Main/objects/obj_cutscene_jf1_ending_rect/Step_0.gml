if start = 1
{
    a++;
    if a > 2
    {
        alpha += 0.01;
        if alpha >= 1 
        {
            room_goto(GlobalMapPrologueJungle);
            global.completed_JF1 = 1;
        	instance_destroy();	
        }	
    }
}