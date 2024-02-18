if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 48;
            y_tp = 128;
            room_tp = PS1_r7;
            graph = 1;
            break;
        case 2:
            x_tp = 432;
            y_tp = 128;
            room_tp = PS1_r9;
            graph = 2;
            break;
    }
}

num = 1;