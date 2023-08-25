if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 32;
            y_tp = 560;
            room_tp = PS2_r12;
            graph = 1;
            break;
        case 4:
            x_tp = 16;
            y_tp = 192;
            room_tp = PS1_r9;
            graph = 2;
            break;
    }
}

num = 2;