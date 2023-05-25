if place_meeting(x,y,obj_Player)
{
    obj_camera_boss_s2.state = 3;
    obj_snow_boss_controller.state = 3;
    instance_destroy();
}