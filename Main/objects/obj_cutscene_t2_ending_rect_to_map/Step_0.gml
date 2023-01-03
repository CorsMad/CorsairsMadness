t++;
if t = 100 start = 1;
if start = 1
{
    
    a++;
    if a > 2
    {
        alpha += 0.02;
        if alpha >= 1
        {
            // Положение на карте
            
            global.PlayerOnIsland = 0;
            room_goto(GlobalMapPrologue);
        	instance_destroy();	
        }	
    }
}