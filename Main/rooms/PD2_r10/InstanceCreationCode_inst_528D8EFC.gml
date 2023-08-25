if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 48;
            y_tp = 624;
            room_tp = PD2_r12;
            graph = 1;
            break;
        case 4:
            x_tp = 32;
            y_tp = 112;
            room_tp = PD2_r13;
            graph = 2;
            break;
    }
}

num = 2;