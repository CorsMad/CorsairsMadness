t++;
if t = 100 start = 1;
if start = 1
{
    a++;
    if a > 2
    {
        alpha -= 0.02;
        if alpha <= 0
        {
            // Положение на карте

            global.PlayerOnIsland = 0;
            instance_create_depth(0,0,0,obj_cutscene_t2_to_map)
        	instance_destroy();	
        }	
    }
}