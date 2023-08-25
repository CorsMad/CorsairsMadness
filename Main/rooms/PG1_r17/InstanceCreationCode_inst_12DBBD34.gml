if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 5:
            x_tp = 400;
            y_tp = 224;
            room_tp = PG1_r19;
            graph = 1;
            break;
        case 6:
            x_tp = 32;
            y_tp = 112;
            room_tp = PG1_r20;
            graph = 2;
            break;
    }
}

num = 3;