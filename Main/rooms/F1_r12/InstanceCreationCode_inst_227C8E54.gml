if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 1136;
            y_tp = 224;
            room_tp = F1_r14;
            graph = 1;
            break;
        case 4:
            x_tp = 32;
            y_tp = 160;
            room_tp = F1_r16;
            graph = 2;
            break;
    }
}

num = 2;