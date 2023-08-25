if place_meeting(x,y,obj_Player)
{
    switch(state)
    {
        case 0:
            obj_camera_vert_g1_s2.state = 0;            
            break;
        case 1:
            obj_camera_vert_g1_s2.state = 1;
            break;
        case 2:
            obj_camera_vert_ps2_r11.state = 2;
            break;
    }
}