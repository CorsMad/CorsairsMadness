if start = 1
{
    a++;
    if a > 2
    {
        alpha += 0.01;
        if alpha >= 1 
        {
            room_goto(GlobalMapPrologueShadow);
            global.completed_PG1 = 1;
        	instance_destroy();	
        }	
    }
}