/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    if obj_Player.y < room_height/2
    {
        state = 0   
        y = 135;
    } else 
    {
        state = 2;y = 590-135;
        }
        
}


