if place_meeting(x,y,obj_Player)
{
    obj_camera_boss_s2.state = 1;
    instance_destroy();
    obj_snow_boss_controller.state = 1;
}