if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 64;
            y_tp = 96;
            room_tp = PG1_r13;
            graph = 1;
            break;
        case 4:
            x_tp = 256;
            y_tp = 464;
            room_tp = PG1_r10;
            graph = 2;
            break;
    }
}

num = 2;