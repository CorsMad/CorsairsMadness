/// @description Insert description here
// You can write your code in this editor
if state = 1
{
    if instance_exists(obj_Player_boat)
    {
        y=lerp(y,obj_Player_boat.y-272,0.05);  
        x=lerp(x,obj_Player_boat.x,0.05);  
    }
}