if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 192;
            y_tp = 224;
            room_tp = PG2_r7;
            graph = 1;
            break;
        case 2:
            x_tp = 96;
            y_tp = 208;
            room_tp = PG2_r9;
            graph = 2;
            break;
    }
}

num = 1;