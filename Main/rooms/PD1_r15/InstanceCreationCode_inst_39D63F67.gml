if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 5:
            x_tp = 32;
            y_tp = 256;
            room_tp = PD1_r17;
            graph = 1;
            break;
        case 6:
            x_tp = 48;
            y_tp = 256;
            room_tp = PD1_r18;
            graph = 2;
            break;
    }
}

num = 3;