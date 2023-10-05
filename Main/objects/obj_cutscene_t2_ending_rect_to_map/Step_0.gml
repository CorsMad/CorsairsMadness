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
            fnc_msc_stop_play();
            global.PlayerOnIsland = 0;
            room_goto(Tutor_1_transition_to_boat);
        	instance_destroy();	
        }	
    }
}