/// @description Insert description here
// You can write your code in this editor

conf = 0;

if instance_exists(obj_Player)
{
    if obj_Player.y < room_height/2     
    {
        y = 135;  
        state= 0;
    } else 
    {
        y = 686-135;
        state = 3;
    }
    
}
