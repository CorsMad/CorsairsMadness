if place_meeting(x,y,obj_Player)
{
    switch(state)
    {
        case 0:
        if obj_camera_vert_pg1_r15.state!=0
        {
            obj_camera_vert_pg1_r15.state = 0;    
            obj_camera_vert_pg1_r15.conf = 0;
        }
            break;
        case 1:
            obj_camera_vert_pg1_r15.state = 1;
            obj_camera_vert_pg1_r15.conf = 0;
            break;
        case 2:
            obj_camera_vert_pg1_r15.state = 2;
            break;
    }
}