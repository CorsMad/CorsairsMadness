/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_Player)
{
    switch(state)
    {
        case 0:
            instance_create_depth(camera_get_view_x(view_camera[0])-48,obj_Player.y,-1,obj_follower_graveyard);            
            break;
        case 1:
            if instance_exists(obj_follower_graveyard) obj_follower_graveyard.attack = 1;   
            break;
    }
    instance_destroy();
}




