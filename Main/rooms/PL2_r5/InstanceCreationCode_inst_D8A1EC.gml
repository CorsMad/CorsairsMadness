if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 48;
            y_tp = 160;
            room_tp = PL2_r7;
            graph = 1;
            break;
        case 2:
            x_tp = 64;
            y_tp = 256;
            room_tp = PL2_r10;
            graph = 2;
            break;
    }
}

num = 1;