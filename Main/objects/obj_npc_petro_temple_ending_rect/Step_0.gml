a++;
if a = 50 fnc_msc_stop_play_slow();
if a > 100
{
    
    alpha += 0.01;
    if alpha >= 1 
    {
        global.dia_shadowMerch = 2;
        room_goto(PG2_ending);
        instance_destroy(obj_Player);
        instance_destroy();	
    }	
}
