if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 5:
            x_tp = 32;
            y_tp = 240;
            room_tp = F1_r21;
            graph = 1;
            break;
        case 6:
            x_tp = 32;
            y_tp = 128;
            room_tp = F1_r23;
            graph = 2;
            break;
    }
}

num = 3;