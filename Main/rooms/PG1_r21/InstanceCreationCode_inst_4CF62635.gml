if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 7:
            x_tp = 32;
            y_tp = 176;
            room_tp = PG1_r23;
            graph = 1;
            break;
        case 8:
            x_tp = 32;
            y_tp = 656;
            room_tp = PG1_r24;
            graph = 2;
            break;
    }
}

num = 4;