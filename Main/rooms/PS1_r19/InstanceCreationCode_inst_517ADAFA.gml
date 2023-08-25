if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 7:
            x_tp = 32;
            y_tp = 96;
            room_tp = PS1_r21;
            graph = 1;
            break;
        case 8:
            x_tp = 32;
            y_tp = 112;
            room_tp = PS1_r22;
            graph = 2;
            break;
    }
}

num = 4;