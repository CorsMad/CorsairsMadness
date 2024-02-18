if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 112;
            y_tp = 240;
            room_tp = PD2_r7;
            graph = 1;
            break;
        case 2:
            x_tp = 48;
            y_tp = 176;
            room_tp = PD2_r8;
            graph = 2;
            break;
    }
}

num = 1;