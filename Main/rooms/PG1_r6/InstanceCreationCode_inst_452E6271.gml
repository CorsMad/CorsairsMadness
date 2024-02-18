if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 16;
            y_tp = 160;
            room_tp = PG1_r8;
            graph = 1;
            break;
        case 2:
            x_tp = 432;
            y_tp = 256;
            room_tp = PG1_r10;
            graph = 2;
            break;
    }
}

num = 1;