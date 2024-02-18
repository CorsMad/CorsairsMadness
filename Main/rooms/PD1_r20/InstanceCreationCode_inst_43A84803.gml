if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 7:
            x_tp = 32;
            y_tp = 144;
            room_tp = PD1_r22;
            graph = 1;
            break;
        case 8:
            x_tp = 32;
            y_tp = 256;
            room_tp = PD1_r23;
            graph = 2;
            break;
    }
}

num = 4;