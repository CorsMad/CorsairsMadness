if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 48;
            y_tp = 240;
            room_tp = PG2_r12;
            graph = 1;
            break;
        case 4:
            x_tp = 96;
            y_tp = 1072;
            room_tp = PG2_r13;
            graph = 2;
            break;
    }
}

num = 2;