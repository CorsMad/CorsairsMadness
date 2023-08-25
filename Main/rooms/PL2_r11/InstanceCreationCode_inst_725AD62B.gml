if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 64;
            y_tp = 240;
            room_tp = PL2_r13;
            graph = 1;
            break;
        case 4:
            x_tp = 32;
            y_tp = 672;
            room_tp = PL2_r14;
            graph = 2;
            break;
    }
}

num = 2;