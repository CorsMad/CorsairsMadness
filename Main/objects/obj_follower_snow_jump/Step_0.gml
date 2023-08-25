/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_follower_snow)
{
    if place_meeting(x,y,obj_follower_snow)
    {
        if obj_follower_snow.state = 1
        {
            obj_follower_snow.hspd = hspd;
            obj_follower_snow.vspd = vspd;    
            obj_follower_snow.jump = 1;
        }
    }
}
