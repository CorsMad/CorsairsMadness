if instance_exists(obj_Player)
{
    switch(obj_Player.tp)
    {
        case 1:
            x_tp = 32;
            y_tp = 96;
            room_tp = F1_r8;
            graph = 1;
            break;
        case 2:
            x_tp = 32;
            y_tp = 112;
            room_tp = F1_r11;
            graph = 2;
            break;
    }
}

num = 1;