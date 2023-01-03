a++;
if a > 50
{
    alpha += 0.01;
    if alpha >= 1 
    {
        room_goto(PrologeEnding);
        instance_destroy(obj_Player);
        instance_destroy();	
    }	
}
