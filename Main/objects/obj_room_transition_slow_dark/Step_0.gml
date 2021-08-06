/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    instance_destroy();
    obj_Player.isDead = 2;
    obj_Player.fspd = 2;
    obj_Player.key_right = 1;
    
    instance_create_depth(camera_get_view_x(view_camera[0]),0,-10000000,obj_room_transition_black_screen_to_end);   
}