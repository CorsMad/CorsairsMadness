if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 32;
            y_tp = 160;
            room_tp = PL1_r7;
            graph = 1;
            break;
        case 2:
            x_tp = 32;
            y_tp = 144;
            room_tp = PL1_r9;
            graph = 2;
            break;
    }
}

num = 1;