if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 3:
            x_tp = 96;
            y_tp = 208;
            room_tp = PL1_r12;
            graph = 1;
            break;
        case 4:
            x_tp = 96;
            y_tp = 240;
            room_tp = PL1_r14;
            graph = 2;
            break;
    }
}

num = 2;