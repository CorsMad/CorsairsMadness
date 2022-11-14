
alpha += 0.075;
if alpha >= 1 
{
    t++;
    if t >= 100
    {
        room_goto(TargetRoom);
        obj_Player.x = TargetX;
        obj_Player.y = TargetY;
        obj_Player.isDead = 2.2;
        obj_Player.depth = 0;
        obj_Player.vspeed = 0;
        instance_destroy();	
    }
}	
